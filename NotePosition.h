//
// Created by Raghavasimhan Sankaranarayanan on 2019-04-13.
//

#ifndef OSC_TEST_NOTEPOSITION_H
#define OSC_TEST_NOTEPOSITION_H

#include <vector>
#include <algorithm>
#include "DS.h"

using namespace std;

class NotePosition {
private:
    int whiteKeys[5] = {1, 3, 6, 8, 10};
    std::vector <int> MARIMBA_POSITIONS;


public:
    int getNote(int value);
    int notePosition(int value);
    bool isWhiteKey(int keyValue);
};


#endif //OSC_TEST_NOTEPOSITION_H
