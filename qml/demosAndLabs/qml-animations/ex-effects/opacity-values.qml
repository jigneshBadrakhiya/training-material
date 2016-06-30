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
    width: 1000
    height: 250

    Rectangle {
        x: 0; y: 0; width: 300; height: 250
        color: "black"
        Image {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 30
            opacity: 0.5
            source: "../images/rocket.svg"
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 27
            text: "opacity: 0.5"; font.pixelSize: 32
            color: "white"
        }
    }

    Rectangle {
        x: 350; y: 0; width: 300; height: 250
        color: "black"
        Image {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 30
            opacity: 0.7
            source: "../images/rocket.svg"
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 27
            text: "opacity: 0.7"; font.pixelSize: 32
            color: "white"
        }
    }

    Rectangle {
        x: 700; y: 0; width: 300; height: 250
        color: "black"
        Image {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 30
            source: "../images/rocket.svg"
        }
        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 27
            text: "(default) 1.0"; font.pixelSize: 32
            color: "white"
        }
    }
}
