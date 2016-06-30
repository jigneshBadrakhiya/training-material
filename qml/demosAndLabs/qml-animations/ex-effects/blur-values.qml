/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.4
import QtGraphicalEffects 1.0

Item {
    width: 1300
    height: 200

    Rectangle {
        x: 0; y: 0; width: 400; height: 200
        color: "lightblue"
        Text {
            id: textElement1
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: "Qt Quick"; font.pixelSize: 64
            visible: false
        }
        FastBlur {
            anchors.fill: textElement1
            source: textElement1
            radius: 1.0
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            text: "blurRadius: 1"; font.pixelSize: 32
            color: "darkBlue"
        }
    }

    Rectangle {
        x: 450; y: 0; width: 400; height: 200
        color: "lightblue"
        Text {
            id: textElement2
            visible: false
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: "Qt Quick"; font.pixelSize: 64
        }
        FastBlur {
            anchors.fill: textElement2
            source: textElement2
            radius: 3.0
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            text: "blurRadius: 3"; font.pixelSize: 32
            color: "darkBlue"
        }
    }

    Rectangle {
        x: 900; y: 0; width: 400; height: 200
        color: "lightblue"
        Text {
            id: textElement3
            visible: false
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: "Qt Quick"; font.pixelSize: 64
        }
        FastBlur {
            anchors.fill: textElement3
            source: textElement3
            radius: 5.0
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            text: "blurRadius: 5"; font.pixelSize: 32
            color: "darkBlue"
        }
    }
}
