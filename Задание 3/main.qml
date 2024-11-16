import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.12

Window {
    visible: true
    width: 400
    height: 600
    title: qsTr("Пример вёрстки с layuot ами")

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
            color: "white"
            border.color: "lightgray"
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

            Button {
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                background: Rectangle { color: "gray" }
                Text {
                    anchors.centerIn: parent
                    text: "1"
                }
            }

            Button {
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                background: Rectangle { color: "gray" }
                Text {
                    anchors.centerIn: parent
                    text: "2"
                }
            }

            Button {
                Layout.fillWidth: true
                Layout.preferredHeight: 50
                background: Rectangle { color: "gray" }
                Text {
                    anchors.centerIn: parent
                    text: "3"
                }
            }
        }
    }
}
