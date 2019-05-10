//
// Created by Raghavasimhan Sankaranarayanan on 2019-04-13.
//

#include "StrikerController.h"

vector<Striker> StrikerController::strikers;

StrikerMode strikerMode;

StrikerController::StrikerController() {
    int lResult;
    strikers.emplace_back(Striker(0));  // Dummy
    strikers.emplace_back(Striker(0));  // Dummy
    strikers.emplace_back(Striker(2));
    strikers.emplace_back(Striker(3));
    strikers.emplace_back(Striker(4));
//    for(int i = 0; i < numStrikers; i++) {
//        strikers.emplace_back(Striker(i));
//    }
    lResult = prepareStrikers();
    if (lResult != MMC_SUCCESS) {
        throw std::exception();
    }
}

int StrikerController::prepareStrikers() {
    int lResult = MMC_SUCCESS;
    unsigned int errorCode = 0;
    for (auto &s : strikers) {
        if ((lResult = s.Prepare()) != MMC_SUCCESS) {
            s.LogError("Prepare", lResult, errorCode);
            return lResult;
        }
    }
    return lResult;
}

void StrikerController::strike(int ID, int m_velocity, StrikerMode mode) {
    thread{&Striker::strike, &strikers[ID], m_velocity, mode}.detach();
}

int StrikerController::getIdFor(IAI_Message msg) {
    auto notePosition = NotePosition();
    if (notePosition.isWhiteKey(msg.Xtarget)) {
        return msg.armID + 2;
    } else {
        return msg.armID;
    }
}

//void StrikerController::strike(IAI_Message message, StrikerMode mode) {
//    auto armID = getIdFor(message);
//    strike(armID, message.hitVelocity, mode);
//}

StrikerController::~StrikerController() noexcept(false) {
    int lResult;

    for (auto s:strikers) {
        lResult = s.CloseDevice();
        if (lResult != MMC_SUCCESS) {
            throw std::exception();
        }
    }

}

//StrikerController::StrikerController() {
//    for(int i = 0; i < 1; i++) {
//        strikers.emplace_back(Striker(i));
//    }
//    numStrikers = strikers.size();
//}

void StrikerController::startOSC(int port) {
    auto server = OSCReceiver();
    if (!server.start(port)) {
        throw std::exception();
    }
}

void StrikerController::handleMessage(lo_arg **argv, const char* path) {
    auto mode = getStrikerMode(&argv[0] -> s);
    int ID = argv[1] -> i;
    int m_velocity = argv[2] -> i;
    cout << path << endl;

    switch (mode) {
        case Normal: {
            strikerMode = Normal;
            thread{StrikerController::pNormalStrike, strikers[ID], m_velocity}.detach();
            break;
        }
        case Fast: {
            strikerMode = Fast;
            thread{StrikerController::pFastStrike, strikers[ID], m_velocity}.detach();
            break;
        }
        case Tremolo: {
            strikerMode = Tremolo;
            if (!Striker::playingTremolo)
                thread{StrikerController::ptremoloStrike, strikers[ID], m_velocity}.detach();
            break;
        }
        default:break;
    }
}

StrikerMode StrikerController::getStrikerMode(string s) {
    transform(s.begin(), s.end(), s.begin(), ::tolower);
    if (s == "normal") return Normal;
    if (s == "fast") return Fast;
    if (s == "tremolo") return Tremolo;
    return Unknown;
}

void StrikerController::ptremoloStrike(Striker s, int m_velocity) {
    Striker::tremoloStrike(s, m_velocity);
}

void StrikerController::pNormalStrike(Striker s, int m_velocity) {
    Striker::normalStrike(s, m_velocity);
}

void StrikerController::pFastStrike(Striker s, int m_velocity) {
    Striker::fastStrike(s, m_velocity);
}


