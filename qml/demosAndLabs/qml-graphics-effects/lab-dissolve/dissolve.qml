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
    width: picture.width; height: picture.height

    Image {
        id: picture
        anchors.centerIn: parent
        source: "../images/tampere.jpg"
    }

    // Hint: For help you can look at the commented shader
    // code in shader-extract-hint.qml
}
