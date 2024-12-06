import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Rectangle {
    id: root
    height: 60
    width: parent.width
    gradient: Gradient {
        GradientStop { position: 0; color: "lightgray" }
        GradientStop { position: 1; color: "white" }
    }

    signal newMessage(string msg)

    RowLayout {
        anchors.fill: parent
        spacing: 0

        TextField {
            id: edtText
            Layout.fillWidth: true
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            Layout.preferredHeight: parent.height
            placeholderText: "Write a message..."
            font.pointSize: 16
            color: "black"
        }

        Button {
            id: btnAddItem
            Layout.preferredWidth: parent.height
            Layout.preferredHeight: parent.height
            font.pointSize: 16
            text: ">"
            onClicked: {
                newMessage(edtText.text);
                edtText.clear();
            }
        }
    }
}
