import QtQuick 2.15
import QtQuick.Controls 2.5

Page {
    id: root
    property alias backgroundColor: back_fon.color
    property alias buttonText: button_nav.text
    property bool showToRedButton: false // По умолчанию кнопка скрыта
    signal buttonClicked()
    signal backButtonClicked() // Сигнал для кнопки "Назад"

    background: Rectangle {
        id: back_fon
    }

    Button {
        id: button_nav
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 10
        text: buttonText
        onClicked: {
            root.buttonClicked()
        }
    }

    Button {
        id: redButton
        text: "To Red"
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.margins: 10
        visible: false // Скрыта по умолчанию
        onClicked: {
            root.buttonClicked()
        }
    }

    Button {
        id: back
        text: "<"
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.margins: 10
        visible: true
        onClicked: {
            root.backButtonClicked() // Срабатывает сигнал при нажатии на кнопку "Назад"
        }
    }
}
