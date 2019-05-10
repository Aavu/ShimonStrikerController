//
// Created by Raghavasimhan Sankaranarayanan on 2019-04-13.
//

#include "Striker.h"

int Striker::playingTremolo = false;

int Striker::getNodeID() {
    return ID;
}

void Striker::sleep_ms(unsigned int time) {
    chrono::milliseconds timespan(time);
    this_thread::sleep_for(timespan);
}

unsigned int Striker::getAcceleration(int x) {
    return (unsigned int) round((((x * -.714) - 59.29) * -27.78) + 833.33);
}

int Striker::getTargetPosition(int x) {
    return (int) round(-((x * .714) + 59.29));
}

void Striker::LogError(const string& functionName, int p_lResult, unsigned int p_ulErrorCode) {
    cerr << functionName << " failed arm " << ID << " (result=" << p_lResult
         << ", errorCode=0x" << std::hex << p_ulErrorCode << ")" << endl;
}

void Striker::LogInfo(const string& message) {
    cout << message << endl;
}

void Striker::SetDefaultParameters() {
    g_usNodeId = getNodeID();
    g_deviceName = "EPOS4";
    g_protocolStackName = "MAXON SERIAL V2";
    g_interfaceName = "USB";
    g_portName = "USB0";
    g_baudrate = 1000000;
}

int Striker::OpenDevice() {
    int lResult = MMC_FAILED;
    unsigned int errorCode = 0;
    char *pDeviceName = new char[255];
    char *pProtocolStackName = new char[255];
    char *pInterfaceName = new char[255];
    char *pPortName = new char[255];

    strcpy(pDeviceName, g_deviceName.c_str());
    strcpy(pProtocolStackName, g_protocolStackName.c_str());
    strcpy(pInterfaceName, g_interfaceName.c_str());
    strcpy(pPortName, g_portName.c_str());

    int end = 10;
    cout << pProtocolStackName << endl;
    VCS_GetProtocolStackNameSelection(pDeviceName, 1, pProtocolStackName, 100, &end, &errorCode);
    cout << pProtocolStackName << endl;
    VCS_GetInterfaceNameSelection(pDeviceName, pProtocolStackName, 1, pInterfaceName, 100, &end, &errorCode);
    cout << pInterfaceName << endl;

    LogInfo("Opening device...");
    g_pKeyHandle = VCS_OpenDevice(pDeviceName, pProtocolStackName, pInterfaceName, pPortName, &errorCode);

    if (g_pKeyHandle != nullptr && errorCode == 0) {
        cout << "Successfully Opened Striker-" << getNodeID() << endl;
        unsigned int lBaudrate = 0;
        unsigned int lTimeout = 0;

        if (VCS_GetProtocolStackSettings(g_pKeyHandle, &lBaudrate, &lTimeout, &errorCode) != 0) {
            if (VCS_SetProtocolStackSettings(g_pKeyHandle, g_baudrate, lTimeout, &errorCode) != 0) {
                if (VCS_GetProtocolStackSettings(g_pKeyHandle, &lBaudrate, &lTimeout, &errorCode) != 0) {
                    if (g_baudrate == lBaudrate) {
                        lResult = MMC_SUCCESS;
                    }
                }
            }
        }
    } else {
        g_pKeyHandle = nullptr;
    }

    delete[]pDeviceName;
    delete[]pProtocolStackName;
    delete[]pInterfaceName;
    delete[]pPortName;

    return lResult;
}

int Striker::CloseDevice() {
    int lResult = MMC_FAILED;
    unsigned int errorCode = 0;
    LogInfo("Close device");

    if (VCS_SetDisableState(g_pKeyHandle, g_usNodeId, &errorCode) == 0) {
        LogError("VCS_SetDisableState", lResult, errorCode);
        lResult = MMC_FAILED;
    }

    if (VCS_CloseDevice(g_pKeyHandle, &errorCode) != 0 && errorCode == 0) {
        lResult = MMC_SUCCESS;
    }

    return lResult;
}

int Striker::Prepare() {
    BOOL oIsFault = 0;
    int lResult = MMC_SUCCESS;
    unsigned int errorCode = 0;
    if (VCS_GetFaultState(g_pKeyHandle, g_usNodeId, &oIsFault, &errorCode) == 0) {
        LogError("VCS_GetFaultState", lResult, errorCode);
        lResult = MMC_FAILED;
    }

    if (lResult == MMC_SUCCESS) {
        if (oIsFault) {
            stringstream msg;
            msg << "clear fault, node = '" << g_usNodeId << "'";
            LogInfo(msg.str());
            if (VCS_ClearFault(g_pKeyHandle, g_usNodeId, &errorCode) == 0) {
                LogError("VCS_ClearFault", lResult, errorCode);
                lResult = MMC_FAILED;
            }
        }

        if (lResult == MMC_SUCCESS) {
            BOOL oIsEnabled = 0;

            if (VCS_GetEnableState(g_pKeyHandle, g_usNodeId, &oIsEnabled, &errorCode) == 0) {
                LogError("VCS_GetEnableState", lResult, errorCode);
                lResult = MMC_FAILED;
            }

            if (lResult == MMC_SUCCESS) {
                if (!oIsEnabled) {
                    if (VCS_SetEnableState(g_pKeyHandle, g_usNodeId, &errorCode) == 0) {
                        LogError("VCS_SetEnableState", lResult, errorCode);
                        lResult = MMC_FAILED;
                    } else if (setHome() != MMC_SUCCESS) {
                        LogError("setHome", lResult, errorCode);
                        lResult = MMC_FAILED;
                    }
                }
            }

            if (lResult == MMC_SUCCESS) {
                if (moveToPosition(-150, 5000) != MMC_SUCCESS) {
                    LogError("moveToPosition", lResult, errorCode);
                    lResult = MMC_FAILED;
                }
            }
        }
    }
    return lResult;
}

//Striker::Striker(int armID, int motorID) {
//    this->armID = armID;
//    this->motorID = motorID;
//    SetDefaultParameters();
//    unsigned int errorCode = 0;
//    if ((lResult = OpenDevice()) != MMC_SUCCESS) {
//        LogError("OpenDevice", lResult, errorCode);
//    }
//}

int Striker::setHome() {
    LogInfo("Setting Home..");
    int lResult = MMC_SUCCESS;
    int lastPosition = 10000;
    int currentPosition = -10000;
    unsigned int errorCode = 0;
    while (true) {
        if (moveToPosition(25, 1000, 0) != MMC_SUCCESS) {
            LogError("moveToPosition", lResult, errorCode);
            lResult = MMC_FAILED;
            return lResult;
        }
        if (VCS_GetPositionIs(g_pKeyHandle, g_usNodeId, &currentPosition, &errorCode) == 0) {
            LogError("VCS_GetPositionIs", lResult, errorCode);
            lResult = MMC_FAILED;
            return lResult;
        }
        if (abs(currentPosition - lastPosition) < 10) {
            break;
        }
        cout << "moving" << endl;
        lastPosition = currentPosition;
    }
    if (VCS_DefinePosition(g_pKeyHandle, g_usNodeId, 0, &errorCode) == 0) {
        lResult = MMC_FAILED;
    }
    return lResult;
}

int Striker::setCurrent(int value, bool activate) {
    int lResult = MMC_SUCCESS;
    unsigned int errorCode = 0;
    if (activate) {
        if (VCS_ActivateCurrentMode(g_pKeyHandle, g_usNodeId, &errorCode) == 0) {
            LogError("VCS_ActivateCurrentMode", lResult, errorCode);
            lResult = MMC_FAILED;
            return lResult;
        }
    }

    stringstream msg;
    msg << "current = " << value;
    LogInfo(msg.str());

    if (VCS_SetCurrentMust(g_pKeyHandle, g_usNodeId, (short) value, &errorCode) == 0) {
        LogError("VCS_SetCurrentMust", lResult, errorCode);
        lResult = MMC_FAILED;
        return lResult;
    }

    return lResult;
}

int Striker::strike(int m_velocity, StrikerMode mode) {
    int lResult = MMC_SUCCESS;
    unsigned int errorCode = 0;
    if (!dummy) {
        std::cout << "Striking motor " << getNodeID() << " " << m_velocity << " " << mode << std::endl;
        if (mode == Normal) {
            int current = getCurrent(m_velocity);
            if (setCurrent(current) != MMC_SUCCESS) {
                LogError("setCurrent", lResult, errorCode);
                lResult = MMC_FAILED;
                return lResult;
            }

            sleep_ms(10);

            while (true) {
                int velocityIs = 6000;
                if (VCS_GetVelocityIs(g_pKeyHandle, g_usNodeId, &velocityIs, &errorCode) == 0) {
                    LogError("VCS_GetVelocityIs", lResult, errorCode);
                    lResult = MMC_FAILED;
                    return lResult;
                }
                if (velocityIs < 20) {
                    break;
                }
            }

            unsigned int acc = getAcceleration(m_velocity);
            int position = getTargetPosition(m_velocity);

            if (moveToPosition(position, acc) != MMC_SUCCESS) {
                LogError("moveToPosition", lResult, errorCode);
                lResult = MMC_FAILED;
            }

        }
    }
    return lResult;
}

int Striker::moveToPosition(int position, unsigned int acc, BOOL absolute) {
    int lResult = MMC_SUCCESS;
    unsigned int errorCode = 0;
    if (VCS_ActivateProfilePositionMode(g_pKeyHandle, g_usNodeId, &errorCode) == 0) {
        LogError("VCS_ActivateProfilePositionMode", lResult, errorCode);
        lResult = MMC_FAILED;
    } else {
        stringstream msg;
        msg << "move to position = " << position << ", acc = " << acc;
        LogInfo(msg.str());

        if (VCS_SetPositionProfile(g_pKeyHandle, g_usNodeId, velocity, acc, acc, &errorCode) == 0) {
            LogError("VCS_SetPositionProfile", lResult, errorCode);
            lResult = MMC_FAILED;
            return lResult;
        }

        if (VCS_MoveToPosition(g_pKeyHandle, g_usNodeId, position, absolute, 1, &errorCode) == 0) {
            LogError("VCS_MoveToPosition", lResult, errorCode);
            lResult = MMC_FAILED;
            return lResult;
        }

//        if (VCS_WaitForTargetReached(g_pKeyHandle, g_usNodeId, 500, &errorCode) == 0) {
//            LogError("VCS_WaitForTargetReached", lResult, errorCode);
//            lResult = MMC_FAILED;
//            return lResult;
//        }
    }
    return lResult;
}

int Striker::getCurrent(int m_velocity) {
    if (strikerMode == Tremolo) {
        return (int) round(m_velocity*(-71.25) - 928.57);
    }
    return (int)round(((m_velocity * -.714) - 59.29) * -44.44 + 333.33);
}

Striker::Striker(int ID) {
    this->ID = ID;
    this->dummy = this->ID == 0;
    if (!dummy) {
        SetDefaultParameters();
        unsigned int errorCode = 0;
        int lResult;
        if ((lResult = OpenDevice()) != MMC_SUCCESS) {
            LogError("OpenDevice", lResult, errorCode);
        }
    }
}

void Striker::normalStrike(Striker& s, int m_velocity) {
    strikerMode = Normal;
    s.strike(m_velocity);
}

void Striker::fastStrike(Striker& s, int m_velocity) {
    strikerMode = Fast;
    s.strike(m_velocity, Fast);
}

void Striker::tremoloStrike(Striker& s, int m_velocity) {
    int lResult = MMC_SUCCESS;
    unsigned int errorCode = 0;
    if (!s.dummy) {
        playingTremolo = true;
        if (s.moveToPosition(0, 2000) != MMC_SUCCESS) {
            s.LogError("moveToPosition", lResult, errorCode);
            return;
        }

        sleep_ms(10);

        if (VCS_ActivateCurrentMode(s.g_pKeyHandle, s.g_usNodeId, &errorCode) == 0) {
            lResult = MMC_FAILED;
            s.LogError("VCS_ActivateProfilePositionMode", lResult, errorCode);
            return;
        }

        cout << "playing Tremolo..." << endl;

        while (strikerMode == Tremolo) {
            auto startTime = chrono::steady_clock::now();
            int current = getCurrent(m_velocity);
            if (s.setCurrent(current, false) != MMC_SUCCESS) {
                lResult = MMC_FAILED;
                s.LogError("setCurrent", lResult, errorCode);
                playingTremolo = false;
                return;
            }
            auto endTime = chrono::steady_clock::now();
            auto ms = chrono::duration_cast<chrono::milliseconds>(endTime - startTime).count();

            sleep_ms(abs(5 - ms));

            if (s.setCurrent(-current, false) != MMC_SUCCESS) {
                lResult = MMC_FAILED;
                s.LogError("setCurrent", lResult, errorCode);
                playingTremolo = false;
                return;
            }

            sleep_ms(10);

            lResult = s.waitTillHit(10);
            if (lResult != MMC_SUCCESS) {
                playingTremolo = false;
                s.LogError("waitTillHit", lResult, errorCode);
                return;
            }
        }
        cout << "Stopped Tremolo.." << endl;
        playingTremolo = false;
    }
}

int Striker::waitTillHit(int velocityThreshold) {
    int velocityIs;
    unsigned int errorCode = 0;
    int lResult = MMC_SUCCESS;
    do {
        if (VCS_GetVelocityIs(g_pKeyHandle, g_usNodeId, &velocityIs, &errorCode) == 0) {
            lResult = MMC_FAILED;
            LogError("VCS_GetVelocityIs", lResult, errorCode);
            break;
        }
        sleep_ms(5);    // Experiment with these values
    } while (velocityIs > velocityThreshold);
    return lResult;
}