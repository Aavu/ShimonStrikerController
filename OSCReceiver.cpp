//
// Created by Raghavasimhan Sankaranarayanan on 2019-04-11.
//

#include "OSCReceiver.h"

bool OSCReceiver::quit = false;

int OSCReceiver::start(int port) {
    std::atomic<int> received;
    lo::ServerThread st(port);
    if (!st.is_valid()) {
        std::cout << "Nope." << std::endl;
        return 1;
    }

    st.set_callbacks([&st](){printf("Thread init: %p.\n",&st);},
                     [](){printf("Thread cleanup.\n");});


    std::cout << "URL: " << st.url() << std::endl;

    //receives msg from osc address "/Striker", "sii" is string integer integer, mode, ID, velocity
    st.add_method("/Striker", "sii",
                  [&received](const char* path, const char* types, lo_arg **argv, int) {
        StrikerController::handleMessage(argv, path);
    });

    //receives quit msg from osc address "/Striker"
    st.add_method("/Striker", "s",
                  [&received](const char* path, const char* types, lo_arg **argv, int) {
                      OSCReceiver::handleQuit(argv);
                  });
    quit = false;
    std::cout << "Starting server" << std::endl;
    st.start();
    listen(st);
    return 0;
}

int OSCReceiver::listen(lo::ServerThread &st) {
    std::cout << "Listening..." << std::endl;

    while (!quit) {
        usleep(10*1000);
    }
    st.stop();
    return 0;
}

void OSCReceiver::handleQuit(lo_arg **argv) {
    string command = &argv[0] -> s;
    transform(command.begin(), command.end(), command.begin(), ::tolower);
    if (command == "quit") quit = true;
}

