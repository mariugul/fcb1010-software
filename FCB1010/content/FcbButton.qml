import QtQuick 6.5
import QtQuick.Controls 6.5

Rectangle {
    property bool debugBorderLine: false
    id: rectangle
    property alias buttonVisible: button.visible
    property alias lightVisible: light.visible
    property alias lightColor: light.color
    property real aspectRatio: 0.502

    width: 66
    height: width / aspectRatio
    opacity: 1
    color: "transparent"


    Button {
        id: button
        width: parent.width
        height: parent.height
        opacity: debugBorderLine ? 0.5 : 0.0
        visible: true

        // This is just a debug border
        Rectangle {
            id: debugBorder
            width: parent.width
            height: parent.height
            color: "#00000000"
            border.color: "red"
            border.width: 2
            visible: debugBorderLine
        }

        onClicked: {
            light.visible = !light.visible;
        }
    }


    property real light_scale: 0.26

    Rectangle {
        id: light
        width: parent.width * light_scale
        height: parent.width * light_scale
        radius: width / 2
        border.width: 0
        z: 3
        x: parent.width * 0.18
        y: parent.height * 0.02
        color: "red"
        opacity: 0.7
        visible: false
    }
}
