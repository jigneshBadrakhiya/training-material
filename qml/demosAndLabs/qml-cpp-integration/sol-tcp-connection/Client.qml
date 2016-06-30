/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.4
import TCP 1.0
import QtQuick.Window 2.2

Window {
    visible: true
    width: 400; height: 400
    ChatWindow {
        anchors.fill: parent
        type : TcpConnectionElement.Client
        port : 4242
        hostName : "localhost"
    }
}
