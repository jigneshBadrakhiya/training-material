/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.4
import Shapes 6.0
import QtQuick.Window 2.2

Window {
    visible: true
    width: 300; height: 150
    Item {
        anchors.fill: parent

        Ellipse {
            x: 35; y: 25; width: 100; height: 100
            color: "blue"
            style: Ellipse.Outline
        }

        Ellipse {
            x: 165; y: 25; width: 100; height: 100
            color: "blue"
            style: Ellipse.Filled
        }
    }
}
