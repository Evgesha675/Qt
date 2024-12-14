import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Page {
    id: root
    property alias backgroundColor: back_fon.color
    property alias buttonText: button_nav.text
    signal buttonClicked()

    Rectangle {
        id: back_fon
        color: "white"
        anchors.fill: parent
    }

    Button {
        id: button_nav
        anchors.centerIn: parent
        onClicked: root.buttonClicked()
    }
}
