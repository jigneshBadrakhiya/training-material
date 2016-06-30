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
    width: 200; height: 100
    color: "lightblue"
    
    TextInput {
        x: 20; y: 20
        width: 160
        font.pixelSize: 32
        text: "Qt Quick"
        focus: true
        onTextChanged: color = "green"
    }
}
