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
import QtQuick.Window 2.2

ApplicationWindow {
    title: qsTr("Table View")
    width: 400
    height: 400
    visible: true

    Component.onCompleted: {
        for (var i = 0; i < 100; ++i) {
            simpleModel.append({"name": "Item " + i, "btnChecked": "false"});
        }
    }

    TableView {
        anchors.fill: parent
        TableViewColumn {
            title: "Item"
            role: "name"
        }
        TableViewColumn {
            title: "Btn"
            role: "btnChecked"
            delegate: tableViewDelegate
        }
        model: simpleModel
    }

    Component {
        id: tableViewDelegate
        Item {
            RadioButton {
                checked: (styleData.value === "false") ? false : true
                onClicked: {
                    checked ? simpleModel.setProperty(styleData.row, "btnChecked", "true") : simpleModel.setProperty(styleData.row, "btnChecked", "false");
                }
                onVisibleChanged: {
                    checked = (styleData.value === "false") ? false : true;
                }
            }
        }
    }

    ListModel {
        id: simpleModel
    }
}


