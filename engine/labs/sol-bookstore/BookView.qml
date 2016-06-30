/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.3

Item {
    Component {
        id: bookDelegate
        Grid {
            property var listView: ListView.view
            columns: 2
            spacing: 5
            Text {
                text: qsTr("Title:")
            }

            TextInput {
                text: (title == undefined) ? "" : title
                onAccepted: _bookStore.bookModel.setData(listView.currentIndex, "title", text)
            }

            Text {
                text: qsTr("Price:")
            }

            TextInput {
                text: (price == undefined) ? "" : price
                onAccepted: _bookStore.bookModel.setData(listView.currentIndex, "price", text)
            }

            Text {
                text: qsTr("Notes:")
            }

            TextInput {
                text: (notes == undefined) ? "" : notes
                onAccepted: _bookStore.bookModel.setData(listView.currentIndex, "notes", text)
            }
        }
    }

    ListView {
        model: _bookStore.bookModel
        delegate: bookDelegate
        highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
        header: Rectangle {
            height: 20
            width: parent.width
            color: "lightblue"

            Text {
                text: qsTr("Book")
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
                    id: addBookButton
                    buttonText: qsTr("Add Book")
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        addBookButton.notify();
                        _bookStore.addBook()
                    }
                }
            }

            Rectangle {
                enabled: ListView.currentIndex != -1
                width: parent.width / 3
                height: parent.height
                radius: 5
                color: "lightgray"
                anchors.right: parent.right

                Button {
                    id: removeBookButton
                    buttonText: qsTr("Remove Book")
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        removeBookButton.notify();
                        _bookStore.removeBook(listView.currentIndex)
                    }
                }
            }
        }

        anchors.fill: parent
    }
}
