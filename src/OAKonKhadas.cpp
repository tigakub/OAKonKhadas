#include "OAKonKhadas.hpp"

#include <opencv2/opencv.hpp>

OAKonKhadas::OAKonKhadas(const string &iDXLPortPath, int iLoopPeriod)
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

OAKonKhadas::~OAKonKhadas() {
    stop();
}

void OAKonKhadas::start() {
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

void OAKonKhadas::stop() {
    alive = false;
}

void OAKonKhadas::wait() {
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

void OAKonKhadas::loop() {
    auto imgFrame = rgbQ->get<ImgFrame>();
    cv::imshow("rgb", imgFrame->getCvFrame());
    int key = cv::waitKey(1);
    if(tolower(key) == 'q') {
        alive = false;
    }
}

void OAKonKhadas::command() {
    string cmd;
    cout << "OoK > ";
    getline(cin, cmd);
    processCommand(cmd);
}

void OAKonKhadas::processCommand(const string &iCommand) {
    if((lower(iCommand) == "quit") || (lower(iCommand) == "exit")) {
        stop();
    }
}
