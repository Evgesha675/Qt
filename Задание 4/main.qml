import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Window {
    visible: true
    width: 400
    height: 600
    title: qsTr("Пример с кнопками")

    ColumnLayout {
        anchors.fill: parent
        spacing: 10

        Rectangle {
            id: header
            Layout.fillWidth: true
            height: 40
            color: "lightgray"

            Text {
                anchors.centerIn: parent
                text: "Header"
            }
        }

        Rectangle {
            id: content
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.margins: 5
            color: "lightgray"
            border.color: "black"
            border.width: 1

            Text {
                anchors.centerIn: parent
                text: "Content"
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
                color: "gray"
                opacity: 1
                radius: 5
                border.color: "black"

                Text {
                    anchors.centerIn: parent
                    text: "1"
                    opacity: button1.opacity
                }

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true

                    onClicked: {
                        button1.color = "darkgray"
                        button1.opacity = 1
                        button2.color = "gray"
                        button2.opacity = 0.5
                        button3.color = "gray"
                        button3.opacity = 0.5
                        header.children[0].text = "Button 1"
                        content.children[0].text = "Button 1 is active now"
                    }

                    onReleased: {
                        if (button1.color !== "darkgray") {
                            button1.color = "gray"
                        }
                    }

                    onEntered: {

                        button1.color = "lightblue"
                    }

                    onExited: {

                        if (button1.color !== "darkgray") {
                            button1.color = "gray"
                        }
                    }
                }
            }
            Rectangle {
                id: button2
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                color: "gray"
                opacity: 1
                radius: 5
                border.color: "black"


                Text {
                    anchors.centerIn: parent
                    text: "2"
                    opacity: button2.opacity
                }

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true

                    onClicked: {
                        button1.color = "gray"
                        button1.opacity = 0.5
                        button2.color = "darkgray"
                        button2.opacity = 1
                        button3.color = "gray"
                        button3.opacity = 0.5
                        header.children[0].text = "Button 2"
                        content.children[0].text = "Button 2 is active now"
                    }

                    onReleased: {
                        if (button2.color !== "darkgray") {
                            button2.color = "gray"
                        }
                    }

                    onEntered: {
                        button2.color = "lightblue"
                    }

                    onExited: {
                        if (button2.color !== "darkgray") {
                            button2.color = "gray"
                        }
                    }
                }
            }
            Rectangle {
                id: button3
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                color: "gray"
                opacity: 1
                radius: 5
                border.color: "black"


                Text {
                    anchors.centerIn: parent
                    text: "3"
                    opacity: button3.opacity
                }

                MouseArea {
                    anchors.fill: parent
                    hoverEnabled: true

                    onClicked: {
                        button1.color = "gray"
                        button1.opacity = 0.5
                        button2.color = "gray"
                        button2.opacity = 0.5
                        button3.color = "darkgray"
                        button3.opacity = 1
                        header.children[0].text = "Button 3"
                        content.children[0].text = "Button 3 is active now"
                    }

                    onReleased: {
                        if (button3.color !== "darkgray") {
                            button3.color = "gray"
                        }
                    }

                    onEntered: {
                        button3.color = "lightblue"
                    }

                    onExited: {
                        if (button3.color !== "darkgray") {
                            button3.color = "gray"
                        }
                    }
                }
            }
        }
    }
}
