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
    width: 300; height: 50
    color: "black"

    TextInput {
        id: textInput
        text: "Text input"; color: "white"
        font.family: "Helvetica"; font.pixelSize: 32
        focus: true
        anchors.left: parent.left
        anchors.leftMargin: 4
        anchors.verticalCenter: parent.verticalCenter
    }

    Rectangle {
        color: "red"
        anchors.left: textInput.right
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        height: 8
    }
}
