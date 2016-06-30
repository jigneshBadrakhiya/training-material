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

    Rectangle {
        x: 100; y: 100
        width: 200; height: 200
        gradient: blueGreenGradient
    }

    Gradient {
        id: blueGreenGradient
        GradientStop { position: 0.0; color: "green" }
        GradientStop { position: 1.0; color: "blue" }
    }
}
