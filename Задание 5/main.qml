import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: qsTr("layout вёрстка с переходами")

    Item {
        id: mainItem
        anchors.fill: parent
        state: "default"

        ColumnLayout {
            anchors.fill: parent
            spacing: 10

            Rectangle {
                id: header
                Layout.fillWidth: true
                height: 40
                color: "lightgray"

                RowLayout {
                    anchors.fill: parent

                    Rectangle {
                        id: backButton
                        visible: false
                        Layout.preferredWidth: 50
                        height: parent.height
                        color: "gray"
                        radius: 5
                        border.color: "black"

                        Text {
                            anchors.centerIn: parent
                            text: "back"
                            color: "black"
                        }

                        MouseArea {
                            anchors.fill: parent
                            hoverEnabled: true
                            onClicked: {
                                if (mainItem.state === "state2") {
                                    mainItem.state = "state1";
                                } else if (mainItem.state === "state3") {
                                    mainItem.state = "state2";
                                }
                            }
                            onEntered: backButton.color = "darkgray"
                            onExited: backButton.color = "gray"
                        }
                    }

                    Text {
                        anchors.centerIn: parent
                        text: mainItem.state === "default" ? "Header" :
                              mainItem.state === "state1" ? "Button 1" :
                              mainItem.state === "state2" ? "Button 2" :
                              "Button 3"
                        font.pixelSize: 16
                    }
                }
            }

            Rectangle {
                id: content
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.margins: 5
                color: "white"
                border.color: "lightgray"
                border.width: 1

                Text {
                    anchors.centerIn: parent
                    text: mainItem.state === "default" ? "Content" :
                          mainItem.state === "state1" ? "Button 1 is active now" :
                          mainItem.state === "state2" ? "Button 2 is active now" :
                          "Button 3 is active now"
                    font.pixelSize: 14
                }
            }

            RowLayout {
                Layout.fillWidth: true
                height: 60
                Layout.margins: 10
                spacing: 10

                Rectangle {
                    id: button1
                    Layout.fillWidth: true
                    Layout.preferredHeight: 50
                    color: mainItem.state === "state1" ? "darkgray" : "gray"
                    radius: 5
                    border.color: "black"

                    Text {
                        anchors.centerIn: parent
                        text: "1"
                        color: mainItem.state === "state1" ? "black" : "lightgray"
                    }

                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: {
                            colorAnim1.start();
                            mainItem.state = "state1";
                        }
                        onEntered: {
                            if (mainItem.state !== "state1") {
                                button1.color = "darkgray";
                            }
                        }
                        onExited: {
                            if (mainItem.state !== "state1") {
                                button1.color = "gray";
                            }
                        }
                    }
                }

                Rectangle {
                    id: button2
                    Layout.fillWidth: true
                    Layout.preferredHeight: 50
                    color: mainItem.state === "state2" ? "darkgray" : "gray"
                    radius: 5
                    border.color: "black"

                    Text {
                        anchors.centerIn: parent
                        text: "2"
                        color: mainItem.state === "state2" ? "black" : "lightgray"
                    }

                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: {
                            colorAnim2.start();
                            mainItem.state = "state2";
                        }
                        onEntered: {
                            if (mainItem.state !== "state2") {
                                button2.color = "darkgray";
                            }
                        }
                        onExited: {
                            if (mainItem.state !== "state2") {
                                button2.color = "gray";
                            }
                        }
                    }
                }

                Rectangle {
                    id: button3
                    Layout.fillWidth: true
                    Layout.preferredHeight: 50
                    color: mainItem.state === "state3" ? "darkgray" : "gray"
                    radius: 5
                    border.color: "black"

                    Text {
                        anchors.centerIn: parent
                        text: "3"
                        color: mainItem.state === "state3" ? "black" : "lightgray"
                    }

                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: {
                            colorAnim3.start();
                            mainItem.state = "state3";
                        }
                        onEntered: {
                            if (mainItem.state !== "state3") {
                                button3.color = "darkgray";
                            }
                        }
                        onExited: {
                            if (mainItem.state !== "state3") {
                                button3.color = "gray";
                            }
                        }
                    }
                }
            }
        }


        ColorAnimation {
            id: colorAnim1
            target: button1
            property: "color"
            to: "lightgray"
            duration: 500
        }

        ColorAnimation {
            id: colorAnim2
            target: button2
            property: "color"
            to: "lightgray"
            duration: 500
        }

        ColorAnimation {
            id: colorAnim3
            target: button3
            property: "color"
            to: "lightgray"
            duration: 500
        }

        states: [
            State {
                name: "default"
                PropertyChanges {
                    target: button1
                    color: "gray"
                }
                PropertyChanges {
                    target: button1.children[0]
                    color: "lightgray"
                }
                PropertyChanges {
                    target: button2
                    color: "gray"
                }
                PropertyChanges {
                    target: button2.children[0]
                    color: "lightgray"
                }
                PropertyChanges {
                    target: button3
                    color: "gray"
                }
                PropertyChanges {
                    target: button3.children[0]
                    color: "lightgray"
                }
                PropertyChanges {
                    target: backButton
                    visible: false
                }
            },
            State {
                name: "state1"
                PropertyChanges {
                    target: button1
                    color: "darkgray"
                }
                PropertyChanges {
                    target: button1.children[0]
                    color: "black"
                }
                PropertyChanges {
                    target: button2
                    color: "gray"
                }
                PropertyChanges {
                    target: button2.children[0]
                    color: "lightgray"
                }
                PropertyChanges {
                    target: button3
                    color: "gray"
                }
                PropertyChanges {
                    target: button3.children[0]
                    color: "lightgray"
                }
                PropertyChanges {
                    target: backButton
                    visible: false
                }
            },
            State {
                name: "state2"
                PropertyChanges {
                    target: button1
                    color: "gray"
                }
                PropertyChanges {
                    target: button1.children[0]
                    color: "lightgray"
                }
                PropertyChanges {
                    target: button2
                    color: "darkgray"
                }
                PropertyChanges {
                    target: button2.children[0]
                    color: "black"
                }
                PropertyChanges {
                    target: button3
                    color: "gray"
                }
                PropertyChanges {
                    target: button3.children[0]
                    color: "lightgray"
                }
                PropertyChanges {
                    target: backButton
                    visible: true
                }
            },
            State {
                name: "state3"
                PropertyChanges {
                    target: button1
                    color: "gray"
                }
                PropertyChanges {
                    target: button1.children[0]
                    color: "lightgray"
                }
                PropertyChanges {
                    target: button2
                    color: "gray"
                }
                PropertyChanges {
                    target: button2.children[0]
                    color: "lightgray"
                }
                PropertyChanges {
                    target: button3
                    color: "darkgray"
                }
                PropertyChanges {
                    target: button3.children[0]
                    color: "black"
                }
                PropertyChanges {
                    target: backButton
                    visible: true
                }
            }
        ]
    }
}
