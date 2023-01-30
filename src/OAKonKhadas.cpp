#include "OAKonKhadas.hpp"

#include <opencv2/opencv.hpp>

bool OAKonKhadas::extendedDisparity = false;
bool OAKonKhadas::subpixel = false;
bool OAKonKhadas::lrCheck = true;

OAKonKhadas::OAKonKhadas(const string &iDXLPortPath, int iLoopPeriod)
: alive(false), loopPeriod(iLoopPeriod),
  loopThread(nullptr), commandThread(nullptr),
  portHandler(nullptr), packetHandler(nullptr),
  pipeline(),
  camRGB(nullptr), xoutRGB(nullptr),
  camMonoLeft(nullptr), camMonoRight(nullptr),
  stereoDepth(nullptr),
  xoutDepth(nullptr),
  rgbQ(nullptr),
  depthQ(nullptr),
  mode(RGB) { 
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

    camMonoLeft = pipeline.create<node::MonoCamera>();
    camMonoRight = pipeline.create<node::MonoCamera>();
    stereoDepth = pipeline.create<node::StereoDepth>();
    xoutDepth = pipeline.create<node::XLinkOut>();

    xoutDepth->setStreamName("depth");

    camMonoLeft->setResolution(MonoCameraProperties::SensorResolution::THE_400_P);
    camMonoRight->setResolution(MonoCameraProperties::SensorResolution::THE_400_P);
    camMonoLeft->setBoardSocket(CameraBoardSocket::LEFT);
    camMonoRight->setBoardSocket(CameraBoardSocket::RIGHT);

    stereoDepth->setDefaultProfilePreset(node::StereoDepth::PresetMode::HIGH_DENSITY);
    stereoDepth->initialConfig.setMedianFilter(MedianFilter::KERNEL_7x7);
    stereoDepth->setLeftRightCheck(lrCheck);
    stereoDepth->setExtendedDisparity(extendedDisparity);
    stereoDepth->setSubpixel(subpixel);

    // Linking
    camRGB->preview.link(xoutRGB->input);

    camMonoLeft->out.link(stereoDepth->left);
    camMonoRight->out.link(stereoDepth->right);
    stereoDepth->disparity.link(xoutDepth->input);

    // Connect to device and start pipeline
    Device device(pipeline, UsbSpeed::SUPER);

    cout << "Connected cameras: ";
    for(const auto& cam : device.getConnectedCameras()) {
        cout << cam << " ";
    }
    cout << endl;

    // Print USB speed
    cout << "USB speed: " << device.getUsbSpeed() << endl;

    // Bootloader version
    if(device.getBootloaderVersion()) {
        cout << "Bootloader version: " << device.getBootloaderVersion()->toString() << endl;
    }

    // Device name
    cout << "Device name: " << device.getDeviceName() << endl;
    
    rgbQ = device.getOutputQueue("rgb", 4, false);
    depthQ = device.getOutputQueue("depth", 4, false);

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
                this_thread::sleep_for(chrono::milliseconds(5000));
                cout << "Type \"quit\" or \"exit\" on this command line to terminate." << endl;
                cout << "Press 'd' in the view window to view depth telemetry, and 'r' to view RGB telemetry." << endl;
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
    shared_ptr<ImgFrame> imgFrame = nullptr;
    if(mode == RGB) {
        imgFrame = rgbQ->get<ImgFrame>();
    } else if(mode == DEPTH) {
        imgFrame = depthQ->get<ImgFrame>();
    }

    if(imgFrame) {
        cv::imshow("OAK", imgFrame->getCvFrame());
    }
    int key = cv::waitKey(1);
    switch(tolower(key)) {
        case 'r':
            mode = RGB;
            break;
        case 'd':
            mode = DEPTH;
            break;
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
