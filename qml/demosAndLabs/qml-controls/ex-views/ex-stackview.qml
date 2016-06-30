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
    title: qsTr("Stack View")
    width: 640
    height: 480
    visible: true

    Rectangle {
        id: pageOne
        gradient: Gradient {
            GradientStop {
                position: 0.00;
                color: "#338007";
            }
            GradientStop {
                position: 1.00;
                color: "#050404";
            }
        }
        Text {
            anchors.centerIn: parent
            color: "white"
            text: qsTr("Page one")
            font.pixelSize: 24

        }
    }

    Rectangle {
        id: pageTwo
        visible: false
        gradient: Gradient {
            GradientStop {
                position: 0.00;
                color: "#338007";
            }
            GradientStop {
                position: 1.00;
                color: "#050404";
            }
        }
        Text {
            anchors.centerIn: parent
            color: "white"
            text: qsTr("Page two")
            font.pixelSize: 24
        }
    }

    toolBar: ToolBar {
        id: toolBar
        RowLayout {
            id: buttonLayout
            Instantiator {
                id: instantiator
                model: toolButtonModel
                ToolButton {
                    parent: buttonLayout
                    text: buttonName
                    visible: buttonVisible
                    onClicked: {
                        if (stackView.depth === 1) {
                            stackView.push({item: pageTwo});
                            toolButtonModel.setProperty(1, "buttonVisible", true);
                            toolButtonModel.setProperty(0, "buttonVisible", false);
                        }
                        else {
                            stackView.pop();
                            toolButtonModel.setProperty(1, "buttonVisible", false);
                            toolButtonModel.setProperty(0, "buttonVisible", true);
                        }
                    }
                }
            }
        }
    }

    ListModel {
        id: toolButtonModel
        ListElement {
            buttonName: "Next page"
            buttonVisible: true
        }
        ListElement {
            buttonName: "Previous page"
            buttonVisible: false
        }
    }

    StackView {
        id: stackView
        initialItem: pageOne
    }
}
