/*************************************************************************
 *
 * Copyright (c) 2016 Qt Group Plc.
 * All rights reserved.
 *
 * See the LICENSE.txt file shipped along with this file for the license.
 *
 *************************************************************************/

import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.2

ApplicationWindow {
    title: qsTr("Controls")
    width: 400
    height: 200
    visible: true

    GridLayout {
        anchors.fill: parent
        columns: 3
        Button {
            text: qsTr("Press me")
            onClicked: messageDialog.show(qsTr("Btn pressed"))
            style: ButtonStyle {
                background: Rectangle {
                    gradient: Gradient {
                        GradientStop {
                            position: 0.00;
                            color: "#3ed115";
                        }
                        GradientStop {
                            position: 1.00;
                            color: "#ffffff";
                        }
                    }
                }
            }
        }
        RadioButton {
            style: RadioButtonStyle {
                indicator: Rectangle {
                    width: 50
                    height: width
                    radius: width / 2
                    color: "green"
                    Rectangle {
                        width: parent.width * 0.3
                        height: width
                        anchors.centerIn: parent
                        color: "white"
                        visible: control.checked
                    }
                }
            }
        }
        Label {
            text: qsTr("I'm a label")
            color: "blue"
        }
        Slider {
            Layout.fillWidth: true
            id: slider
            minimumValue: -10
            maximumValue: 10
            value: -10
            tickmarksEnabled: true
            style: SliderStyle {
                tickmarks: Row {
                    width: control.width
                    spacing: (width - (control.maximumValue - control.minimumValue) * 2) / (control.maximumValue - control.minimumValue)
                    Repeater {
                        model: control.maximumValue - control.minimumValue
                        Rectangle {
                            width: 2
                            height: 10
                            y: -10
                            color: (control.value < 0) ? "blue" : "red"
                        }
                    }
                }
            }
        }
        SpinBox {
            minimumValue: -10
            maximumValue: 10
            value: slider.value
            style: SpinBoxStyle {
                decrementControl: Button {
                    anchors.top: parent.bottom
                    text: qsTr("Dec");
                    onClicked: control.value--
                }
            }
        }
        BusyIndicator {
            running: true
            MouseArea {
                anchors.fill: parent
                onClicked: (parent.running) ? parent.running = false : parent.running = true
            }
            style: BusyIndicatorStyle {
                indicator: Image {
                    source: "../images/snowflake.png"
                    RotationAnimation {
                        id: animation
                        target: parent
                        property: "rotation"
                        from: 0
                        to: 360
                        loops: Animation.Infinite
                        running: control.running
                        duration: 5000
                    }
                }
            }
        }
        ProgressBar {
            value: 0.48
            style: ProgressBarStyle {
                progress: Rectangle {
                    id: bar
                    width: control.width * currentProgress
                    height: control.height
                    gradient: Gradient {
                        GradientStop {
                            position: 0.00;
                            color: "#45e817";
                        }
                        GradientStop {
                            position: 1.00;
                            color: "#ffffff";
                        }
                    }
                }
            }
        }
        TextField {
            validator: IntValidator {
                bottom: 11; top: 31;
            }
            focus: true
        }
    }

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: messageDialog.show(qsTr("Open action triggered"));
            }
            MenuItem {
                text: qsTr("E&xit")
                onTriggered: Qt.quit();
            }
        }
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}
