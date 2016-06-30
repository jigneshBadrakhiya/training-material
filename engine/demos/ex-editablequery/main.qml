/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.3

Rectangle {
    width: 700
    height: 300

    Component {
        id: bookDelegate

        Column {
            height: 90
            width: parent.width
            Text {
                text: title
                width: parent.width
                elide: Text.ElideRight
            }

            Text {
                text: lastName + ", " + firstName
            }

            Text {
                text: price
            }

            Text {
                text: notes
            }
        }
    }

    ListView {
        id: listView
        model: _model
        delegate: bookDelegate
        section.delegate: Rectangle {
            color: "red"
            height: 20
            width: parent.width

            Text {
                text: section
            }
        }
        highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
        section.property: "lastName"

        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        width: 300
        focus: true
    }

    Column {
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: listView.right
        anchors.leftMargin: 10

        Row {
            height: 20

            Text {
                text: qsTr("Title: ")
                wrapMode: Text.WordWrap
            }

            TextInput {
                id: titleInput
                text: _model.data(listView.currentIndex, "title")
            }
        }
        Row {
            height: 20

            Text {
                text: qsTr("Price: ")
            }

            TextInput {
                id: priceInput
                text: _model.data(listView.currentIndex, "price")
            }
        }
        Row {
            height: 20

            Text {
                text: qsTr("Notes: ")
            }

            TextInput {
                id: notesInput
                text: _model.data(listView.currentIndex, "notes")
            }
        }

        Rectangle {
            height: 30
            width: parent.width
            color: "lightgray"
            radius: 5

            Button {
                id: submitButton
                buttonText: qsTr("Submit")
            }



            MouseArea {
                anchors.fill: parent
                onClicked: {
                    _model.setData(listView.currentIndex, "title", titleInput.text);
                    _model.setData(listView.currentIndex, "price", priceInput.text);
                    _model.setData(listView.currentIndex, "notes", notesInput.text);
                    listView.focus = true;
                    submitButton.notify();
                }
            }
        }
    }
}
