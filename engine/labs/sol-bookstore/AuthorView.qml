/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.3
import QtQuick.Window 2.2

Item {
    Component {
        id: authorDelegate

        Grid {
            property var listView: ListView.view
            columns: 2
            spacing: 5
            Text {
                text: qsTr("First Name:")
            }

            TextInput {
                text: (firstName == undefined) ? "" : firstName
                onAccepted:
                    _bookStore.authorsModel.setData(listView.currentIndex, "firstName", text);
            }

            Text {
                text: qsTr("Last Name:")
            }

            TextInput {
                text: (lastName == undefined) ? "" : lastName
                onAccepted:
                    _bookStore.authorsModel.setData(listView.currentIndex, "lastName", text);
            }
        }
    }

    ListView {
        model: _bookStore.authorsModel
        delegate: authorDelegate
        highlight: Rectangle { width: parent.width; color: "lightsteelblue"; radius: 5 }
        header: Rectangle {
            height: 20
            width: parent.width
            color: "lightblue"

            Text {
                text: qsTr("Author")
                anchors.centerIn: parent
            }
        }
        footer: Rectangle {
            property var listView: ListView.view
            width: parent.width
            height: 30

            Rectangle {
                width: parent.width / 3
                height: parent.height
                radius: 5
                color: "lightgray"
                anchors.left: parent.left

                Button {
                    id: addAuthorButton
                    buttonText: qsTr("Add Author")
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        addAuthorButton.notify();
                        _bookStore.addAuthor();
                    }
                }
            }

            Rectangle {
                enabled: listView.currentIndex != -1
                width: parent.width / 3
                height: parent.height
                radius: 5
                color: "lightgray"
                anchors.right: parent.right

                Button {
                    id: removeAuthorButton
                    buttonText: qsTr("Remove Author")
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        removeAuthorButton.notify();
                        _bookStore.removeAuthor(listView.currentIndex);
                    }
                }
            }
        }

        onCurrentIndexChanged: _bookStore.authorChanged(currentIndex);


        focus: true
        anchors.fill: parent
    }
}
