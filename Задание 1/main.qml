import QtQuick 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Flower")
    id: win

    Item {
        id: root
        anchors.fill: parent

        Test {
            width: parent.width
            height: 200
            anchors.top: parent.top
            colorAlias: "aqua"
        }

        Rectangle {
            width: 80
            height: 80
            color: "yellow"
            radius: 40
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.margins: 20
        }

        Item {
            id: cloud
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.margins: 80

            Rectangle {
                width: 120
                height: 120
                color: "white"
                radius: 60
                anchors.centerIn: parent
            }

            Rectangle {
                width: 80
                height: 80
                color: "white"
                radius: 40
                x:-90
                y:-30

                // anchors.right: cloud.children[0].left
                // anchors.verticalCenter: cloud.children[0].verticalCenter

            }

            Rectangle {
                width: 80
                height: 80
                color: "white"
                radius: 40
                x: 10  // Смещаем вправо относительно первого прямоугольника
                y: -30  // Оставляем тот же вертикальный отступ, что и у второго
            }

        }

        Rectangle {
            id: rec
            width: 100
            height: 100
            color: "yellow"
            radius: 50
            anchors.centerIn: parent
        }

        Test {
            anchors.bottom: rec.top
            anchors.horizontalCenter: rec.horizontalCenter
            colorAlias: "red"
        }

        Test {
            anchors.top: rec.bottom
            anchors.horizontalCenter: rec.horizontalCenter
            colorAlias: "green"
        }

        Test {
            anchors.right: rec.left
            anchors.verticalCenter: rec.verticalCenter
            colorAlias: "blue"
        }

        Test {
            anchors.left: rec.right
            anchors.verticalCenter: rec.verticalCenter
            colorAlias: "purple"
        }

        Test {
            anchors.top: rec.top
            anchors.left: rec.left
            colorAlias: "orange"
        }

        Test {
            anchors.top: rec.top
            anchors.right: rec.right
            colorAlias: "pink"
        }

        Test {
            anchors.bottom: rec.bottom
            anchors.left: rec.left
            colorAlias: "brown"
        }

        Test {
            anchors.bottom: rec.bottom
            anchors.right: rec.right
            colorAlias: "cyan"
        }

        Test {
            anchors.centerIn: rec
            colorAlias: "yellow"
        }

        Rectangle {
            width: 20
            height: 200
            color: "green"
            anchors.top: rec.bottom
            anchors.horizontalCenter: rec.horizontalCenter
        }
    }
}
