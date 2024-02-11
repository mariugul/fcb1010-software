import QtQuick 2.15

Item {
    width: 1800
    height: image.sourceSize.height * (width / image.sourceSize.width)
    property bool borderLine: true
    Image {
        id: image
        source: "images/fcb1010.png"
        z: 0
        width: parent.width
        height: parent.height
        sourceSize.width: 2000
        sourceSize.height: 717
        fillMode: Image.PreserveAspectFit
    }

    // 117 is just the width of the button that matches to the sourcesize of the image
    property real buttonWidth: fcb_button_1.width
    property real aspectRationButtonToImage: 17.09
    property real topRatioBottomButtons: 0.2
    property real topRatioUpperButtons: 0.067
    property real leftRatioBottomButtons: 0.038
    property real leftRationUpperButtons: 0.0875
    property real offsetBetweenButtons: buttonWidth * 0.74
    property real bottomButtonLeftStart: fcb_button_1.anchors.leftMargin + fcb_button_1.width
    property real test: bottomButtonLeftStart + offsetBetweenButtons - bottomButtonLeftStart

    // First bottom button on the left
    FcbButton {
        id: fcb_button_1
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: parent.width * leftRatioBottomButtons
        anchors.topMargin: parent.width * topRatioBottomButtons
        z: 1
        width: parent.width / aspectRationButtonToImage
        debugBorderLine: borderLine
    }

    FcbButton {
        id: fcb_button_2
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: bottomButtonLeftStart + offsetBetweenButtons
        anchors.topMargin: parent.width * topRatioBottomButtons
        z: 1
        width: parent.width / aspectRationButtonToImage
        debugBorderLine: borderLine
    }

    FcbButton {
        id: fcb_button_3
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: fcb_button_2.anchors.leftMargin + buttonWidth + offsetBetweenButtons
        anchors.topMargin: parent.width * topRatioBottomButtons
        z: 1
        width: parent.width / aspectRationButtonToImage
        debugBorderLine: borderLine
    }

    FcbButton {
        id: fcb_button_4
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: fcb_button_3.anchors.leftMargin + buttonWidth + offsetBetweenButtons
        anchors.topMargin: parent.width * topRatioBottomButtons
        z: 1
        width: parent.width / aspectRationButtonToImage
        debugBorderLine: borderLine
    }

    FcbButton {
        id: fcb_button_5
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: fcb_button_4.anchors.leftMargin + buttonWidth + offsetBetweenButtons
        anchors.topMargin: parent.width * topRatioBottomButtons
        z: 1
        width: parent.width / aspectRationButtonToImage
        debugBorderLine: borderLine
    }

    // First upper button on the left
    FcbButton {
        id: fcb_button_6
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: parent.width * leftRationUpperButtons
        anchors.topMargin: parent.width * topRatioUpperButtons
        z: 1
        width: parent.width / aspectRationButtonToImage
        debugBorderLine: borderLine
    }

    FcbButton {
        id: fcb_button_7
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: fcb_button_6.anchors.leftMargin + buttonWidth + offsetBetweenButtons
        anchors.topMargin: parent.width * topRatioUpperButtons
        z: 1
        width: parent.width / aspectRationButtonToImage
        debugBorderLine: borderLine
    }

    FcbButton {
        id: fcb_button_8
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: fcb_button_7.anchors.leftMargin + buttonWidth + offsetBetweenButtons
        anchors.topMargin: parent.width * topRatioUpperButtons
        z: 1
        width: parent.width / aspectRationButtonToImage
        debugBorderLine: borderLine
    }

    FcbButton {
        id: fcb_button_9
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: fcb_button_8.anchors.leftMargin + buttonWidth + offsetBetweenButtons
        anchors.topMargin: parent.width * topRatioUpperButtons
        z: 1
        width: parent.width / aspectRationButtonToImage
        debugBorderLine: borderLine
    }

    FcbButton {
        id: fcb_button_10
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.leftMargin: fcb_button_9.anchors.leftMargin + buttonWidth + offsetBetweenButtons
        anchors.topMargin: parent.width * topRatioUpperButtons
        z: 1
        width: parent.width / aspectRationButtonToImage
        debugBorderLine: borderLine
    }


}
