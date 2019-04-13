#include <iostream>
#include "OSCReceiver.h"
#include "StrikerController.h"


int main(int argc, char * argv[]) {
    try {
        auto controller = StrikerController(1);
        controller.startOSC(30309);
    } catch (std::exception &e) {
        std::cout << "error " << e.what() << endl;
    }
    return 0;
}

