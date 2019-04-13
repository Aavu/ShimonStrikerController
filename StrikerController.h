//
// Created by Raghavasimhan Sankaranarayanan on 2019-04-13.
//

#ifndef OSC_TEST_STRIKERCONTROLLER_H
#define OSC_TEST_STRIKERCONTROLLER_H

#include "DS.h"
#include "Striker.h"
#include "NotePosition.h"
#include "OSCReceiver.h"
#include <thread>

class StrikerController {
private:
    int numStrikers;
    static vector<Striker> strikers;
    int lResult;

public:
    StrikerController();
    explicit StrikerController(int numberOfStrikers = 1);
    int prepareStrikers();
    void strike(IAI_Message message, StrikerMode mode = Normal);
    void strike(int ID, int m_velocity = DEFAULT_VELOCITY, StrikerMode mode = Normal);
    int getIdFor(IAI_Message msg);
    ~StrikerController() noexcept(false);
    static void startOSC(int port = 30309);
    static void handleMessage(lo_arg **argv, const char* path);

    static StrikerMode getStrikerMode(string s);

};

#endif //OSC_TEST_STRIKERCONTROLLER_H
