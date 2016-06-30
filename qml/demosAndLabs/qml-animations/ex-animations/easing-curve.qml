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
    width: 400; height: 400
    color: "lightblue"

    Image {
        x: 220
        source: "../images/backbutton.png"
        NumberAnimation on y {
            from: 0; to: 350
            duration: 1000
            easing.type: "OutExpo"
        }
    }
}
