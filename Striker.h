//
// Created by Raghavasimhan Sankaranarayanan on 2019-04-13.
//

#ifndef OSC_TEST_STRIKER_H
#define OSC_TEST_STRIKER_H

#include <iostream>
#include "Definitions.h"
#include "Globals.h"
#include <string.h>
#include <sstream>
#include <getopt.h>
#include <stdlib.h>
#include <stdio.h>
#include <vector>
#include <math.h>
#include <sys/types.h>
#include <unistd.h>
#include <fstream>
#include <thread>
#include <iomanip>
#include <chrono>


using namespace std;

#ifndef MMC_SUCCESS
#define MMC_SUCCESS 0
#endif

#ifndef MMC_FAILED
#define MMC_FAILED 1
#endif

#ifndef MMC_MAX_LOG_MSG_SIZE
#define MMC_MAX_LOG_MSG_SIZE 512
#endif

#ifndef DEFAULT_VELOCITY
#define DEFAULT_VELOCITY 80
#endif

class Striker {
public:
    static int playingTremolo;
    typedef void *HANDLE;
    typedef int BOOL;

    HANDLE g_pKeyHandle = 0;
    unsigned short g_usNodeId = 1;
    string g_deviceName;
    string g_protocolStackName;
    string g_interfaceName;
    string g_portName;
    unsigned int g_baudrate = 0;

    unsigned int velocity = 6000;
    int armID;
    int motorID;
    int lResult = MMC_FAILED;

public:
    explicit Striker(int armID, int motorID);
    explicit Striker(int armIndex);
    void LogError(const string& functionName, int p_lResult, unsigned int p_ulErrorCode);
    void LogInfo(const string& message);
    int OpenDevice();
    int CloseDevice();
    void SetDefaultParameters();
    int Prepare();
    unsigned int getAcceleration(int x);
    int getTargetPosition(int x);
    static void sleep_ms(unsigned int time);
    int setHome();
    int setCurrent(int value, bool activate = true);
    int getID();
    int strike(int m_velocity = DEFAULT_VELOCITY, StrikerMode mode = Normal);
    int moveToPosition(int position, unsigned int acc, BOOL absolute = 1);
    static int getCurrent(int m_velocity);

    //diff modes
    static void normalStrike(Striker& s, int m_velocity = DEFAULT_VELOCITY);
    static void fastStrike(Striker& s, int m_velocity = DEFAULT_VELOCITY);
    static void tremoloStrike(Striker& s, int m_velocity = DEFAULT_VELOCITY);

    int waitTillHit(int velocityThreshold);
};



#endif //OSC_TEST_STRIKER_H
