/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.3

Text {
    id: root
    property string buttonText

    function notify() {
        timer.start();
        text = qsTr("Executing");
    }

    text: buttonText
    anchors.centerIn: parent

    Timer {
        id: timer
        interval: 1000
        onTriggered: {
            text = buttonText;
        }
    }
}
