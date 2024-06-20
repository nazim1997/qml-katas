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
        progressValue: slider.value
        onProgressValueChanged: {
            if (curvedProgressBar.progressValue < 0.1)
                curvedProgressBar.fillColor = "#015284"
            else if ((curvedProgressBar.progressValue > 0.1) && (curvedProgressBar.progressValue < 0.9))
                curvedProgressBar.fillColor = "#00e436"
            else if (curvedProgressBar.progressValue > 0.9) {
                curvedProgressBar.fillColor = "#ff004d"
            }
        }
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