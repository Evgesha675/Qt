import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Rectangle {
    id: root
    height: 60
    width: parent ? parent.width : 360 // Устанавливаем ширину по умолчанию, если parent не задан
    gradient: Gradient {
        GradientStop { position: 0; color: "lightgray" }
        GradientStop { position: 1; color: "white" }
    }

    signal newMessage(string msg)

    RowLayout {
        anchors.fill: parent
        spacing: 8 // Отступ между элементами

        TextField {
            id: edtText
            Layout.fillWidth: true
            placeholderText: "Write a message..."
            font.pointSize: 16
            color: "black"
        }

        Button {
            id: btnAddItem
            Layout.preferredWidth: 60
            Layout.preferredHeight: 40
            text: ">"
            onClicked: {
                if (edtText.text.trim() !== "") {
                    newMessage(edtText.text.trim());
                    edtText.clear();
                }
            }
        }
    }
}
