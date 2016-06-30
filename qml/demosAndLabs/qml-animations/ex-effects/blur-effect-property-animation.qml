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
    width: 400; height: 400
    color: "lightblue"

    Text {
        id: textElement
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        text: "Qt Quick"; font.pixelSize: 64
        visible: false
    }

    FastBlur {
        id: blur
        anchors.fill: textElement
        source: textElement
        radius: 32.0
    }

    PropertyAnimation {
        from: 32.0; to: 0;
        duration: 2500
        target: blur
        properties: "radius"
        running: true
    }
}
