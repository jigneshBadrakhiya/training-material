/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.4
import Shapes 8.0
import QtQuick.Window 2.0

Window {
    visible: true
    width: 120; height: 120

    Chart {
        width: 120; height: 120

        Bar { color: "#a00000"
            value: -20 }
        Bar { color: "#00a000"
            value: 50 }
        Bar { color: "#0000a0"
            value: 100 }
    }
}
