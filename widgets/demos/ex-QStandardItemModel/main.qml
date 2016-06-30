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
    width: 300
    height: 300

    ListView {
        model: model_

        delegate: Text { text: display }

        anchors.fill: parent
    }
}
