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
            visible: false
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.baseline: parent.verticalCenter
            text: "Qt Quick"; font.pixelSize: 64
        }

        DropShadow {
            anchors.fill: textElement1
            source: textElement1
            radius: 8.0
            samples: 16
            color: "darkblue"
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            text: "radius 8; samples: 16"; font.pixelSize: 32
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
            anchors.baseline: parent.verticalCenter
            text: "Qt Quick"; font.pixelSize: 64
        }

        DropShadow {
            anchors.fill: textElement2
            source: textElement2
            radius: 16.0
            samples: 16
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            text: "radius 16; samples: 16"; font.pixelSize: 32
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
            anchors.baseline: parent.verticalCenter
            text: "Qt Quick"; font.pixelSize: 64
        }

        DropShadow {
            anchors.fill: textElement3
            source: textElement3
            radius: 16.0
            horizontalOffset: -5
            samples: 16
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            text: "radius 16; samples: 16\nhorizontalOffset: -8"; font.pixelSize: 32
            color: "darkBlue"
        }
    }
}
