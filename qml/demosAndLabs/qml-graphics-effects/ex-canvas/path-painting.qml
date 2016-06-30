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
    width: 600; height: 600
    color: "azure"

    Canvas {
        anchors.fill: parent

        onPaint: {
            var context = getContext("2d")
            context.clearRect(0, 0, width, height)

            context.fillRule = Qt.OddEvenFill
            context.fillStyle = "forestgreen"
            context.beginPath()
            context.moveTo(60, 60)
            context.bezierCurveTo(540, 60, 60, 540, 540, 540)
            context.bezierCurveTo(540, 60, 60, 540, 60, 60)
            context.closePath()
            context.rect(120, 120, 360, 360)
            context.fill()
        }
    }
}

