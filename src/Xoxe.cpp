#include "Xoxe.hpp"

#include <opencv2/opencv.hpp>

Xoxe::Xoxe(const string &iDXLPortPath, int iLoopPeriod)
: alive(false), loopPeriod(iLoopPeriod),
  loopThread(nullptr), commandThread(nullptr),
  portHandler(nullptr), packetHandler(nullptr),
  pipeline(),
  camRGB(nullptr), xoutRGB(nullptr),
  rgbQ(nullptr) { 
    portHandler = PortHandler::getPortHandler(iDXLPortPath.c_str());
    packetHandler = PacketHandler::getPacketHandler(1.0);
    if(portHandler && portHandler->openPort()) {
        cout << "USB2AX port open" << endl;
    } else {
        cerr << "Failed to open port to USB2AX" << endl;
    }
}

Xoxe::~Xoxe() {
    stop();
}

void Xoxe::start() {
    if(alive) return;
    alive = true;
    
    camRGB = pipeline.create<node::ColorCamera>();
    xoutRGB = pipeline.create<node::XLinkOut>();

    xoutRGB->setStreamName("rgb");

    camRGB->setPreviewSize(1920, 1080);
    camRGB->setBoardSocket(CameraBoardSocket::RGB);
    camRGB->setResolution(ColorCameraProperties::SensorResolution::THE_1080_P);
    camRGB->setInterleaved(false);
    camRGB->setColorOrder(ColorCameraProperties::ColorOrder::RGB);

    // Linking
    camRGB->preview.link(xoutRGB->input);

    // Connect to device and start pipeline
    Device device(pipeline, UsbSpeed::SUPER);

    cout << "Connected cameras: ";
    for(const auto& cam : device.getConnectedCameras()) {
        cout << cam << " ";
    }
    cout << endl;

    // Print USB speed
    cout << "Usb speed: " << device.getUsbSpeed() << endl;

    // Bootloader version
    if(device.getBootloaderVersion()) {
        cout << "Bootloader version: " << device.getBootloaderVersion()->toString() << endl;
    }

    // Device name
    cout << "Device name: " << device.getDeviceName() << endl;
    
    rgbQ = device.getOutputQueue("rgb", 4, false);

    if(!loopThread) {
        loopThread = new thread(
            [this] { 
                do { 
                    this->loop();
                    this_thread::sleep_for(chrono::milliseconds(loopPeriod)); 
                } while(this->alive);
            }
        );
    }
    if(!commandThread) {
        commandThread = new thread(
            [this] {
                do { 
                    this->command(); 
                } while(this->alive); 
            }
        );
    }
    wait();
    /*
    while(alive) {
        auto imgFrame = rgbQ->get<ImgFrame>();
        cv::imshow("rgb", imgFrame->getCvFrame());
    }
    */
}

void Xoxe::stop() {
    alive = false;
}

void Xoxe::wait() {
    if(loopThread) {
        if(loopThread->joinable()) loopThread->join();
        delete loopThread;
        loopThread = nullptr;
    }
    if(commandThread) {
        if(commandThread->joinable()) commandThread->join();
        delete commandThread;
        commandThread = nullptr;
    }
}

void Xoxe::loop() {
    auto imgFrame = rgbQ->get<ImgFrame>();
    cv::imshow("rgb", imgFrame->getCvFrame());
    int key = cv::waitKey(1);
    if(tolower(key) == 'q') {
        alive = false;
    }
}

void Xoxe::command() {
    string cmd;
    cout << "xoxe > ";
    getline(cin, cmd);
    processCommand(cmd);
}

void Xoxe::processCommand(const string &iCommand) {
    if((lower(iCommand) == "quit") || (lower(iCommand) == "exit")) {
        stop();
    }
}
