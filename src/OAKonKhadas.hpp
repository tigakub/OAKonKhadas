#ifndef __OAKONKHADAS_HPP__
#define __OAKONKHADAS_HPP__

#include <iostream>
#include <thread>
#include <atomic>
#include <string>
#include <algorithm>
#include <chrono>
#include <future>
#include <functional>

#include <dynamixel_sdk/dynamixel_sdk.h>
#include <depthai/depthai.hpp>

using namespace std;
using namespace dynamixel;
using namespace dai;

template <typename T>
basic_string<T> lower(const basic_string<T> &s) {
    basic_string<T> s2(s);
    transform(s2.begin(), s2.end(), s2.begin(), ::tolower);
    return s2;
}

template <typename T>
basic_string<T> upper(const basic_string<T> &s) {
    basic_string<T> s2(s);
    transform(s2.begin(), s2.end(), s2.begin(), ::toupper);
    return s2;
}

class OAKonKhadas {
    protected:
        atomic<bool> alive = false;
        int loopPeriod = 33;
        thread *loopThread = nullptr;
        thread *commandThread = nullptr;

        PortHandler *portHandler = nullptr;
        PacketHandler *packetHandler = nullptr;
        
        Pipeline pipeline;
        shared_ptr<node::ColorCamera> camRGB = nullptr;
        shared_ptr<node::XLinkOut> xoutRGB = nullptr;

        shared_ptr<DataOutputQueue> rgbQ = nullptr;

    public:
        OAKonKhadas(const string &iDXLPortPath = "/dev/serial/by-id/usb-Xevelabs_USB2AX_8583130383535101B2E0-if00", int iLoopPeriod = 33);
        virtual ~OAKonKhadas();

        void start();
        void stop();

        void wait();
    
    protected:
        void loop();
        void command();
        void processCommand(const string &iCommand);
};

#endif
