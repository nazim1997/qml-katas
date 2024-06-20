import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    visible: true
    width: 400
    height: 300
    title: "Exercise 2"

    // CurvedProgressBar component
    CurvedProgressBar {
        id: curvedProgressBar
        anchors.centerIn: parent
        /*Code starts here

        Bind progressValue property with Slider value property
        Trigger an event when progressValue property changes to change fill color property

        -   Hex for blue color is #015284
        -   Hex for green color is #00e436
        -   Hex for red color is #ff004d
        
        Code ends here */
    }

    Slider {
        id: slider
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width * 0.8
        from: 0
        to: 1
        value: 0
    }
}