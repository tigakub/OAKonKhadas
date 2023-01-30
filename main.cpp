#include <iostream>

#include "Xoxe.hpp"

using namespace std;
using namespace dai;

int main(int, char**) {
    cout << "Xoxe starting ..." << endl;
    Xoxe xoxe;
    xoxe.start();
    cout << "Xoxe terminating ..." << endl;
    return 0;
}
