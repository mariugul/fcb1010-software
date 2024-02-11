import QtQuick 2.15
import QtQuick.Controls 6.5

Item {
    property bool debugBorderLine: true

    // Width / height for the proportions of a pedal
    property real aspectRatio: 0.413

    width: 250
    height: width / aspectRatio

    // Debug border
    Rectangle {
            width: parent.width
            height: parent.height
            color: "transparent"
            border.color: "red"
            border.width: 2
            visible: debugBorderLine
        }

    Text {
        id: debugText
        text: "MIDI Value: " + footPedalSlider.value
        font.bold: true
        anchors.centerIn: parent
        font.pointSize: parent.width / 12.5 // Text resize ratio
        color: "red"
        visible: debugBorderLine
    }

    Slider {
        id: footPedalSlider
        anchors.fill: parent
        scale: 1
        orientation: Qt.Vertical
        opacity: 0
        to: 127
        from: 0
        stepSize: 1

        onPositionChanged: {
            debugText.text ="MIDI Value: " + footPedalSlider.value
            console.log("MIDI Value:", footPedalSlider.value);
        }
    }

}
