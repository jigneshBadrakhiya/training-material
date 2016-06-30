/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.4

Rectangle {
    width: 300; height: 100
    color: "lightblue"

    Text {
        y: 34
        text: "Right-aligned text"; color: "green"
        font.family: "Helvetica"; font.pixelSize: 32
        anchors.right: parent.right
    }
}
