/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.3

Rectangle {
    width: 500
    height: 600

    BookView {
        id: bookView

        height: parent.height / 2
        width: parent.width
        anchors.bottom: parent.bottom
    }

    AuthorView {
        id: authorView

        anchors.top: parent.top
        anchors.bottom: bookView.top
        height: parent.height / 2
        width: parent.width
    }
}
