import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    width: 400
    height: 300

    // Property to control the progress value
    property real    progressValue: 0.1 // % progress
    property string  fillColor: "#ff004d"

    Canvas {
        id: canvas
        anchors.centerIn: parent
        width: 200
        height: 200

        onPaint: {
            var ctx = getContext("2d");
            ctx.clearRect(0, 0, width, height);

            var centerX = width / 2;
            var centerY = height / 2;
            var radius = Math.min(centerX, centerY) - 10;
            var startAngle = -Math.PI / 2; // Start from top
            var endAngle = startAngle + progressValue * 2 * Math.PI;

            // Draw background arc
            ctx.beginPath();
            ctx.arc(centerX, centerY, radius, 0, 2 * Math.PI);
            ctx.lineWidth = 20;
            ctx.strokeStyle = "#e0e0e0";
            ctx.stroke();

            // Draw progress arc
            ctx.beginPath();
            ctx.arc(centerX, centerY, radius, startAngle, endAngle);
            ctx.lineWidth = 20;
            ctx.strokeStyle = fillColor;
            ctx.stroke();
        }

        Text {
            id: progressBarText
            anchors.centerIn: parent
            text: Math.round(progressValue * 100) + "%"
            font.pixelSize: 25
        }
    }

    onProgressValueChanged: {
        canvas.requestPaint()
    }
}
