import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: qsTr("пример вёрсточки")

    Rectangle {
        id: root
        anchors.fill: parent
        color: "white"

        Rectangle {
            id: header
            height: 40
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            color: "lightgray"

            Text {
                anchors.centerIn: parent
                text: "Header"
            }
        }

        Rectangle {
            id: content
            anchors.top: header.bottom
            anchors.bottom: footer.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: 10
            color: "white"
            border.color: "lightgray"
            border.width: 1

            Text {
                anchors.centerIn: parent
                text: "Content"
            }
        }

        Rectangle {
            id: footer
            height: 40
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: 10
            color: "lightgray"

            Button {
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                width: (parent.width - 20 - 2 * spacing) / 3
                height: parent.height
                background: Rectangle { color: "gray" }

                Text {
                    anchors.centerIn: parent
                    text: "1"
                }
            }

            Button {
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                width: (parent.width - 20 - 2 * spacing) / 3
                height: parent.height
                background: Rectangle { color: "gray" }

                Text {
                    anchors.centerIn: parent
                    text: "2"
                }
            }

            Button {
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                width: (parent.width - 20 - 2 * spacing) / 3
                height: parent.height
                background: Rectangle { color: "gray" }

                Text {
                    anchors.centerIn: parent
                    text: "3"
                }
            }


        }
    }
}
