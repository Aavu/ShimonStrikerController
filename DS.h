//
// Created by Raghavasimhan Sankaranarayanan on 2019-04-13.
//

#ifndef OSC_TEST_DS_H
#define OSC_TEST_DS_H

//
// Created by Raghavasimhan Sankaranarayanan on 2019-03-21.
//

#include <string>
#include <queue>
#include <iostream>
#include <math.h>
#include <algorithm>

using namespace std;

struct ModbusMessage {
    int armID;
    int position;
    double precision;
    int Vmax;
    double acceleration;
    int push;

    void print() {
        cout << armID << " " << position << " " << precision
             << " " << Vmax << " " << acceleration << " " << push << endl;
    }
};

struct ModbusMessageHex {
    string position;
    string precision;
    string Vmax;
    string acceleration;
    string push;

    void print() {
        cout << position << " " << precision
             << " " << Vmax << " " << acceleration << " " << push << endl;
    }
};

struct IAI_Message {
    int armID;
    int Xtarget;
    double acceleration;
    int Vmax;
    unsigned int hitVelocity;
    int arrivalTime;

    void print() {
        cout << armID << " " << Xtarget << " " << acceleration
             << " " << Vmax << " " << hitVelocity << " " << arrivalTime << endl;
    }
};

struct TimedMessage {
    int armID;
    double time;
    int Xtarget;
    double acceleration;
    int Vmax;
    unsigned int hitVelocity;
    double arrivalTime;

    void print() {
        cout << armID << " " << time << " " << Xtarget << " " << acceleration
             << " " << Vmax << " " << hitVelocity << " " << arrivalTime << endl;
    }

    // Checks if the instance has stored values. Make sure to initialize with {} before calling this function.
    bool isNull() {
        return armID == 0 && time == 0 && Xtarget == 0 && acceleration == 0 && Vmax == 0 && hitVelocity == 0 && arrivalTime == 0;
    }
};

struct StrikerMessage {
    int ID;
    int m_velocity;
    int mode;

    void print() {
        cout << ID << " " << m_velocity << " " << mode << endl;
    }
};

struct Interval {
    double left;
    double right;

    void print() {
        cout << "interval: " << left << " " << right << endl;
    }
};

struct Servo {
    string on = "06h 0Dh 00h 10h 00h";
    string off = "05h 04h 03h 00h 00h";
    string home = "06h 0Dh 00h 10h 10h";
    string alarmCodeQuery = "03h 90h 02h 00h 01h";
    string alarmReset = "05h 04h 07h FFh 00h";
};

#endif //OSC_TEST_DS_H
