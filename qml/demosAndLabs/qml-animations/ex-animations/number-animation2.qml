/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.4

Rectangle {
    width: 400; height: 400; color: "lightblue"

    Rectangle {
        id: rect
        x: 0; y: 150; width: 100; height: 100
    }

    NumberAnimation {
        target: rect
        properties: "x"
        from: 0; to: 150; duration: 1000
        running: true
    }
}
