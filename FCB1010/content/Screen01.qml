

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.5
import QtQuick.Controls 6.5
import FCB1010

Rectangle {
    id: rectangle
    width: parent.width
    height: width * 9 / 16
    opacity: 1
    color: Constants.backgroundColor

    Text {
        id: label
        width: 244
        height: 45
        text: qsTr("Hello FCB1010")
        font.pointSize: 16
        minimumPointSize: 18
        minimumPixelSize: 18
        anchors.verticalCenterOffset: -389
        anchors.horizontalCenterOffset: -121
        anchors.centerIn: parent
        font.family: Constants.font.family
    }

    FcbBoard {
        width: parent.width * 0.7
        anchors.centerIn: parent
        borderLine: false
    }

}
