import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import "functions.js" as Functions

ApplicationWindow {
    visible: true
    width: 500
    height: 500
    color: "white"
    title: "Exercise 4"

    StackView {
        id: stackMenus
        anchors.fill: parent
    }

    Item {
        anchors.fill: parent
        focus: true

        Keys.onPressed: function(event) {
            if (event.key === Qt.Key_Enter || event.key === Qt.Key_Return) {
                console.log("Enter Key Pressed");
                stackMenus.push("Rectangle.qml", {color: Functions.generateRandomColor()});
            }
            else if (event.key === Qt.Key_Escape) {
                console.log("Escape key pressed");
                stackMenus.pop()
            }
        }
    }
}