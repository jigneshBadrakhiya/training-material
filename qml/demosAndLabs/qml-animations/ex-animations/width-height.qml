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
    width: 400; height: 400
    color: "lightblue"

    Rectangle {
        color: "green"
        width: height
        NumberAnimation on height {
            from: 0; to: 400
            duration: 1000
            running: true
        }
    }
}
