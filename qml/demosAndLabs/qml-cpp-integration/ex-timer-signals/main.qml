/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.4
import QtQuick.Window 2.0
import CustomComponents 1.0

Window {
    visible: true
    width: 500
    height: 360

    Rectangle {
        anchors.fill: parent

        Timer {
            id: timer
            interval: 3000

            onTimeout : {
                console.log( "Timer fired!" );
            }
        }

        Text {
            text: qsTr( "Timer is running" )
            font.pixelSize: 24
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 60
        }
    }
}
