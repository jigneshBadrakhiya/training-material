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
  width: 400; height: 200
  color: "lightblue"
  
  Image { id: book; source: "../images/book.svg"
          anchors.left: parent.left
          anchors.leftMargin: parent.width/16
          anchors.verticalCenter: parent.verticalCenter }

  Text { text: "Writing"; font.pixelSize: 32
         anchors.left: book.right
         anchors.leftMargin: 32
         anchors.baseline: book.verticalCenter }
}
