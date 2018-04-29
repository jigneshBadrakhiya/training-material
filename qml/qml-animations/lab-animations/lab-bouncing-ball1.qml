/*************************************************************************
 *
 * Copyright (c) 2018 Qt Company
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.9

Item {
    id: root
    width: 600; height: 300

    Image {
        source: "images/ball.png"
        anchors.horizontalCenter: parent.horizontalCenter

        NumberAnimation on y {
            from: 20; to: root.height * 0.67
            easing.type: "OutBounce"
            duration: 1000
        }
    }
}

