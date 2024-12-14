import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5

Window {
    width: 360
    height: 640
    maximumWidth: 360
    maximumHeight: 640
    minimumWidth: 360
    minimumHeight: 640
    visible: true
    title: qsTr("7 default")
    property int defMargin: 10

    StackView {
        id: stack_view
        anchors.fill: parent
        initialItem: page1
    }

    My_Page {
        id: page1
        backgroundColor: "red"
        buttonText: "To Green"
        onButtonClicked: {
            stack_view.push(page2)
        }
        onBackButtonClicked: {
            stack_view.pop() // Возврат на предыдущую страницу при нажатии кнопки "Назад"
        }
    }

    My_Page {
        id: page2
        backgroundColor: "green"
        buttonText: "To Yellow"
        onButtonClicked: {
            stack_view.push(page3)
        }
        onBackButtonClicked: {
            stack_view.pop() // Возврат на предыдущую страницу при нажатии кнопки "Назад"
        }
    }

    My_Page {
        id: page3
        backgroundColor: "yellow"
        buttonText: "To Red"
        onButtonClicked: {
            stack_view.pop(page1)
        }
        onBackButtonClicked: {
            stack_view.pop() // Возврат на предыдущую страницу при нажатии кнопки "Назад"
        }
    }
}
