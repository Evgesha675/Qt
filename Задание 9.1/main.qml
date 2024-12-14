import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15 

ApplicationWindow {
    visible: true
    width: 300
    height: 400
    title: "Password Input"

    // Ввод пароля
    property string password: ""

    // Текстовое поле для ввода пароля
    Rectangle {
        id: passwordField1
        color: "white"
        border.width: 2
        border.color: "black"
        width: parent.width * 0.8 // ширина поля немного меньше
        height: 50
        anchors.centerIn: parent // Центрируем поле для пароля

        Row {
            spacing: 6
            anchors.centerIn: parent

            // Добавляем 6 элементов Label для отображения введенных символов
            Repeater {
                model: 6
                Label {
                    width: 20
                    height: 20
                    font.pixelSize: 36
                    text: "*"
                    Layout.alignment: Qt.AlignCenter
                    color: index < password.length ? "black" : "lightgrey"
                }
            }
        }
    }

    // Панель с клавишами
    GridLayout {
        id: keypad
        rows: 4
        columns: 3
        width: parent.width * 0.8 // Ширина клавиатуры меньше
        anchors.top: passwordField1.bottom
        anchors.topMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter // Центрируем клавиатуру

        // Используем rowSpacing и columnSpacing для установки отступов
        rowSpacing: 10
        columnSpacing: 10

        Button {
            text: "1"
            onClicked: password += "1"
        }
        Button {
            text: "2"
            onClicked: password += "2"
        }
        Button {
            text: "3"
            onClicked: password += "3"
        }
        Button {
            text: "4"
            onClicked: password += "4"
        }
        Button {
            text: "5"
            onClicked: password += "5"
        }
        Button {
            text: "6"
            onClicked: password += "6"
        }
        Button {
            text: "7"
            onClicked: password += "7"
        }
        Button {
            text: "8"
            onClicked: password += "8"
        }
        Button {
            text: "9"
            onClicked: password += "9"
        }
        
        // Пустышка внизу слева
        Button {
            text: ""  // Пустая кнопка
            enabled: false // Отключаем её
        }

        Button {
            text: "0"
            onClicked: password += "0"
        }
        Button {
            text: "Clear"
            onClicked: password = ""  // Очистка пароля
        }

        // Добавляем кнопку "Login"
        Button {
            text: "Login"
            onClicked: {
                console.log("Entered password: " + password)  // Вывод пароля в консоль
                password = ""  // Очистка пароля после логина
            }
            Layout.columnSpan: 3  // Делаем кнопку шире (на всю ширину)
        }
    }
}
