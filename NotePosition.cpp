//
// Created by Raghavasimhan Sankaranarayanan on 2019-04-13.
//

#include "NotePosition.h"

int NotePosition::getNote(int value) {
    auto it = std::find(MARIMBA_POSITIONS.begin(), MARIMBA_POSITIONS.end(), value);
    if (it != MARIMBA_POSITIONS.end()) return (int) std::distance(MARIMBA_POSITIONS.begin(), it);
    else return -1;
}

int NotePosition::notePosition(int value) {
    int val = getNote(value) + 48;
    if (val < 97 && val > 47) {
        return val;
    } else {
        return -1;
    }
}

bool NotePosition::isWhiteKey(int keyValue) {
    int val = notePosition(keyValue)%12;
    for (int i : whiteKeys) {
        if (val == i) {
            return true;
        }
    }
    return false;
}