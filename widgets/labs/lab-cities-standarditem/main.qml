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
                text: "Population: " + population + ", area: " + area
            }
        }
    }

    ListView {
        model: _model
        delegate: cityDelegate

        anchors.fill: parent
    }
}
