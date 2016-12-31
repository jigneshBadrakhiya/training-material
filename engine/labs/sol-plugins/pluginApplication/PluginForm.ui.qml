/*************************************************************************
 *
 * Copyright (c) 2016 The Qt Company
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.4
import QtQuick.Controls 2.1

Item {
    id: item1
    width: 400
    height: 400
    property alias statusLabel: statusLabel
    property alias resetButton: resetButton
    property alias plugin2Button: plugin2Button
    property alias plugin1Button: plugin1Button

    Column {
        id: column1
        spacing: 5
        anchors.fill: parent

        Label {
            id: statusLabel
            width: parent.width
            text: "-- Ready --"
            font.pointSize: 16
            horizontalAlignment: Text.AlignHCenter
        }

        Button {
            id: plugin1Button
            width: parent.width
            text: qsTr("Load plugin 1")
        }

        Button {
            id: plugin2Button
            width: parent.width
            text: qsTr("Load plugin 2")
        }

        Button {
            id: resetButton
            width: parent.width
            text: qsTr("Reset")
        }

    }
}
