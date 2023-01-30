#include <iostream>

#include "OAKonKhadas.hpp"

using namespace std;
using namespace dai;

int main(int, char**) {
    cout << "OAKonKhadas starting ..." << endl;
    OAKonKhadas oak;
    oak.start();
    cout << "OAKonKhadas terminating ..." << endl;
    return 0;
}
