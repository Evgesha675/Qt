import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 400
    title: "Прокручиваемый светофор"

    SwipeView {
        id: view
        currentIndex: 1
        anchors.fill: parent

        Rectangle {
            id: firstPage
            color: "blue"

        }

        Rectangle {
            id: secondPage
            color: "yellow"

        }

        Rectangle {
            id: thirdPage
            color: "green"

        }
    }

    PageIndicator {
        id: indicator
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.bottomMargin: 16
        anchors.horizontalCenter: parent.horizontalCenter
    }
}
