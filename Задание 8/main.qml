import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("Task_for_ListView_Model")

    property int defMargin: 8

    ListModel {
        id: my_model
        ListElement { name: "Пример сообщения"; time: "Тута время" }
    }

    Page {
        id: page
        anchors.fill: parent

        ListView {
            id: messageList
            anchors.fill: parent
            anchors.bottomMargin: 60
            model: my_model

            delegate: Item {
                width: parent.width
                height: 80
                Rectangle {
                    anchors.fill: parent
                    color: "lightgray"
                    radius: 8
                    border.color: "gray"
                    border.width: 1
                    anchors.margins: 8

                    Column {
                        anchors.margins: 8
                        width: parent.width - 16
                        spacing: 4

                        Text {
                            text: "Сообщение: \n" + name
                            font.bold: true
                            font.pointSize: 12
                        }
                        Text {
                            text: "Time: " + time
                            font.pointSize: 10
                            color: "gray"
                        }
                    }
                }
            }
        }

        Loader {
            id: footerLoader
            source: "footer.qml"
            anchors.bottom: parent.bottom
            width: parent.width
            height: 60

            onLoaded: {
                if (footerLoader.item) {
                    footerLoader.item.newMessage.connect(function(msg) {
                        var newMsg = {
                            name: msg,
                            time: Qt.formatTime(new Date(), "hh:mm")
                        };
                        my_model.append(newMsg);
                    });
                }
            }
        }
    }
}
