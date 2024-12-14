import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: "Login Form"

    Rectangle {
        width: parent.width
        height: parent.height

        Column {
            anchors.centerIn: parent
            spacing: 20

            TextField {
                id: loginField
                width: 300
                placeholderText: "Username"
                focus: true  
            }

            TextField {
                id: passwordField
                width: 300
                placeholderText: "Password"
                echoMode: TextInput.Password  

            Row {
                spacing: 10

                Button {
                    text: "Log In"
                    onClicked: {
                        console.log("Username: " + loginField.text)
                        console.log("Password: " + passwordField.text)
                    }
                }

                // Кнопка Clear
                Button {
                    text: "Clear"
                    onClicked: {
                        loginField.text = ""
                        passwordField.text = ""
                    }
                }
            }
        }
    }
}
