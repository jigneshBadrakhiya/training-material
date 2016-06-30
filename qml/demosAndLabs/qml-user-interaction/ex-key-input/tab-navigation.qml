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
    width: 200; height: 112; color: "lightblue"

    TextInput {
        id: nameField
        anchors.left: parent.left; y: 16
        anchors.right: parent.right
        text: "Name"; font.pixelSize: 32
        focus: true
        KeyNavigation.tab: addressField
    }

    TextInput {
        id: addressField
        anchors.left: parent.left; y: 64
        anchors.right: parent.right
        text: "Address"; font.pixelSize: 32
        KeyNavigation.backtab: nameField
    }
}
