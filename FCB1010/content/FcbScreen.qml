import QtQuick 2.15
import QtQuick.Controls 6.5

Rectangle {
    width: parent.width
    height: width * 0.5
    color: "#9eff0000"
    property alias numberText: numberfield.text

    Text {
        id: numberfield
        text: "00"
        font.pointSize: parent.width * 0.4
        anchors.centerIn: parent
        color: "#ffe100"
    }
}
