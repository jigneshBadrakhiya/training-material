/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("Controls")
    width: 400
    height: 200
    visible: true

    GridLayout {
        anchors.fill: parent
        columns: 3
        Button {
            text: qsTr("Press me")
            onClicked: messageDialog.show(qsTr("Btn pressed"))
        }
        RadioButton {
        }
        Label {
            text: qsTr("I'm a label")
        }
        Slider {
            id: slider
            minimumValue: -10
            maximumValue: 10
            value: -10
        }
        SpinBox {
            minimumValue: -10
            maximumValue: 10
            value: slider.value
        }
        BusyIndicator {
            running: true
            MouseArea {
                anchors.fill: parent
                onClicked: (parent.running) ? parent.running = false : parent.running = true
            }
        }
        ProgressBar {
            value: 0.48
        }
        TextField {
            validator: IntValidator {
                bottom: 11; top: 31;
            }
            focus: true
        }
    }

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: messageDialog.show(qsTr("Open action triggered"));
            }
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }
        }
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}
