//
// Created by Raghavasimhan Sankaranarayanan on 2019-04-13.
//

#include "StrikerController.h"

vector<Striker> StrikerController::strikers;

StrikerMode strikerMode;

StrikerController::StrikerController(int numberOfStrikers) {
    this->numStrikers = numberOfStrikers;
    lResult = MMC_SUCCESS;
    for(int i = 0; i < numStrikers; i++) {
        strikers.emplace_back(Striker(i));
    }
    lResult = prepareStrikers();
    if (lResult != MMC_SUCCESS) {
        throw std::exception();
    }
}

int StrikerController::prepareStrikers() {
    lResult = MMC_SUCCESS;
    unsigned int errorCode = 0;
    for (auto &s : strikers) {
        if ((lResult = s.lResult) != MMC_SUCCESS) {
            return lResult;
        } else {
            if ((lResult = s.Prepare()) != MMC_SUCCESS) {
                s.LogError("Prepare", lResult, errorCode);
                return lResult;
            }
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
        return (((msg.armID - 1) * 2) + 1);
    } else {
        return ((msg.armID - 1) * 2);
    }
}

void StrikerController::strike(IAI_Message message, StrikerMode mode) {
    auto armID = getIdFor(message);
    strike(armID, message.hitVelocity, mode);
}

StrikerController::~StrikerController() noexcept(false) {
    lResult = MMC_SUCCESS;

    for (auto s:strikers) {
        lResult = s.CloseDevice();
        if (lResult != MMC_SUCCESS) {
            throw std::exception();
        }
    }

}

StrikerController::StrikerController() {
    lResult = MMC_SUCCESS;
    for(int i = 0; i < 1; i++) {
        strikers.emplace_back(Striker(i));
    }
    numStrikers = strikers.size();
}

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
            Striker::normalStrike(strikers[ID], m_velocity);
            break;
        }
        case Fast: {
            strikerMode = Fast;
            Striker::fastStrike(strikers[ID], m_velocity);
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


