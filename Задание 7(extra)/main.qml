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
    title: qsTr("7extra")
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
            // Проверка, если страница2 уже в стеке, заменим её, иначе пушим
            if (stack_view.depth > 1 && stack_view.itemAt(1).id === page2) {
                stack_view.replace(page2)
            } else {
                stack_view.push(page2)
            }
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
            // Проверка, если страница3 уже в стеке, заменим её, иначе пушим
            if (stack_view.depth > 2 && stack_view.itemAt(2).id === page3) {
                stack_view.replace(page3)
            } else {
                stack_view.push(page3)
            }
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
            // Переключаем на страницу1 с проверкой, чтобы не было дублей
            if (stack_view.depth === 3) {
                stack_view.pop() // Убираем страницу 3 из стека, чтобы вернуться к page2 
                stack_view.pop() // Убираем страницу 2 из стека, чтобы вернуться к page1 
            } else {
                stack_view.push(page1) // Если page1 не в стеке, добавляем её
            }
        }
        onBackButtonClicked: {
            stack_view.pop() // Возврат на предыдущую страницу при нажатии кнопки "Назад"
        }
   }
}
