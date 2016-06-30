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
    width: 360
    height: 360

    Component {
        id: cityDelegate

        Column {
            height: 50

            Text {
                id: cityText
                text: city + " (" + country + ")"
            }

            Text {
                text: qsTr("Population: ") + population + qsTr(", area: ") + area
            }
        }
    }

    ListView {
        model: _model
        delegate: cityDelegate

        anchors.fill: parent
        section.property: qsTr("country")
        section.delegate: Rectangle {
            height: 20
            width: parent.width
            color: "red"

            Text {
                text: section
            }
        }
    }
}
