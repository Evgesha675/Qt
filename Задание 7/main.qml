import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Window {
    width: 360
    height: 640
    visible: true
    title: qsTr("StackView_test")
    property int defMargin: 10


    maximumWidth: 360
    maximumHeight: 640
    minimumWidth: 360
    minimumHeight: 640

    StackView {
        id: stack_view
        anchors.fill: parent
        initialItem: page1
    }

    My_Page { id: page1
        backgroundColor: "red"
        buttonText: "To_Green"
        onButtonClicked: {
            stack_view.push(page2)
        }
    }

    My_Page { id: page2
        visible: false
        backgroundColor: "green"
        buttonText: "To_Red"
        onButtonClicked: {
            stack_view.pop(page1)
        }
    }
}
