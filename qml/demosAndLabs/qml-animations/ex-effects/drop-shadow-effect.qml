/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.4
import QtGraphicalEffects 1.0

Rectangle {
    width: 400
    height: 200
    color: "lightblue"

    Text {
        id: textElement
        visible: false
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        text: "Qt Quick"; font.pixelSize: 64
    }
    DropShadow {
        anchors.fill: textElement
        source: textElement
        radius: 8.0
        horizontalOffset: 5
        verticalOffset: 5
        samples: 16
    }
}
