/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.4
import Shapes 3.0
import QtQuick.Window 2.2

Window {
    visible: true
    width: 300; height: 300
    Item {
        anchors.fill: parent
        Ellipse {
            x: 50; y: 35; width: 200; height: 100
            color: "blue"
            onReady: label.text = "Ready"
        }

        Text {
            id: label
            x: 50; y: 155; width: 200; height: 100
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 20
            text: "Not ready"
        }
    }
}
