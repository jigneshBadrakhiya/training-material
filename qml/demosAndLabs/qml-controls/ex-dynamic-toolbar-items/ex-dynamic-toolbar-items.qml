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
    title: qsTr("Hello World")
    width: 640
    height: 480
    visible: true

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

    statusBar: StatusBar {
        Label {
            text: qsTr("Status text")
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
                    onClicked: {
                        if (index === 0)
                            toolButtonModel.append({"buttonName": "Btn " + instantiator.count});
                        else if (index === 1)
                            toolButtonModel.remove(instantiator.count - 1, 1);
                        else
                            console.log("Btn",index,"clicked");
                    }
                }
            }
        }
    }

    ListModel {
        id: toolButtonModel
        ListElement {
            buttonName: "Add btn"
        }
        ListElement {
            buttonName: "Remove btn"
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
