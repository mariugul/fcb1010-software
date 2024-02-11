// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.5
import FCB1010

Window {
    width: mainScreen.width
    height: mainScreen.height * 16 / 9

    visible: true
    maximumHeight: width * 9 / 16
    minimumHeight: width * 9 / 16
    minimumWidth: 800

    title: "FCB1010 Software"

    Screen01 {
        id: mainScreen

    }

}

