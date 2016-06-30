/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.4

Item {
    id: root
    width: 100; height: 150

    Rectangle {
        id: groove
        x: 10; y: 25
        width: 50; height: 100
        color: "gray"
        border.color: "lightgray"
        border.width: 4
    }

    Rectangle {
        id: handle
        x: 15; y: 30
        width: 40; height: 30
        color: "lightgray"
    }
}
