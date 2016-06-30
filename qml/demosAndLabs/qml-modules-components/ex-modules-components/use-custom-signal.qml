/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.4
import "items"

Rectangle {
    width: 250; height: 100; color: "lightblue"

    NewCheckBox {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        onChecked: checkValue ? parent.color = "red"
                              : parent.color = "lightblue"
    }
}
