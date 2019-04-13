//
// Created by Raghavasimhan Sankaranarayanan on 2019-04-11.
//

#ifndef OSC_TEST_OSCRECEIVER_H
#define OSC_TEST_OSCRECEIVER_H
#include <lo/lo.h>
#include <lo/lo_cpp.h>
#include <iostream>
#include <atomic>
#include <unistd.h>
#include "DS.h"
#include "StrikerController.h"

#ifndef DEFAULT_PORT
#define DEFAULT_PORT 7000
#endif

class OSCReceiver {
private:
    static bool quit;

public:
    int start(int port = DEFAULT_PORT);
    static int listen(lo::ServerThread &st);
    static void handleQuit(lo_arg **argv);
};


#endif //OSC_TEST_OSCRECEIVER_H
