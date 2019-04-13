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
    st.add_method("/Striker", "sii",
                  [&received](const char* path, const char* types, lo_arg **argv, int) {
        StrikerController::handleMessage(argv, path);
    });

    st.add_method("/Striker", "s",
                  [&received](const char* path, const char* types, lo_arg **argv, int) {
                      OSCReceiver::handleQuit(argv);
                  });
    quit = false;
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
    std::cout << "Success!" << std::endl;
    return 0;
}

void OSCReceiver::handleQuit(lo_arg **argv) {
    string command = &argv[0] -> s;
    if (command == "quit") quit = true;
}

