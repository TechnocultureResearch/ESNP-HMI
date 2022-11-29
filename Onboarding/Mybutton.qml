import QtQuick 2.0
Item{
    id:button
    property int xPoint
    property int yPoint

    property string buttonText
    property double buttonTextX
    property string borderColor
    property string buttonTextColor
    property int borderWidth
    property int borderRadius

    property bool infoVisible:true

    property string backGradient0
    property string backGradient1
    property string imageSrc
    property double imageX

    property int progressOpacity:0
    property int doneOpacity:0
    Rectangle{
        id:but1
        width: parent.width
        height: parent.height
        x: parent.xPoint
        y: parent.yPoint
        Rectangle{
            id: info
            visible: button.infoVisible
            anchors.verticalCenter: parent.verticalCenter
            Text{
                id:t1
                text: button.buttonText
                font.pixelSize: 40
                x:button.buttonTextX
                color: button.buttonTextColor
                font.family:"Calibri"
                anchors.verticalCenter: parent.verticalCenter
            }
            Image {
                id: img1
                source: button.imageSrc
                x:button.imageX
                anchors.verticalCenter: parent.verticalCenter
            }
        }
//        background
//        border.color: "#0B9821"
        border.color: button.borderColor
        border.width: button.borderWidth
        radius: button.borderRadius
        gradient: Gradient{
            GradientStop{
                position: 0
                color: button.backGradient0
            }
            GradientStop{
                position: 1
                color: button.backGradient1
            }
        }
        Rectangle{
            id:progress
            opacity: button.progressOpacity
            width:95
            height: 80
            border.color: "#61F479"
            border.width: 1
            x:0
            y:0
            gradient: Gradient{
                GradientStop{
                    position: 0
                    color: "#0B9821"
                }
                GradientStop{
                    position: 1
                    color: "#1A8502"
                }
            }
        }

        MouseArea{
            id:mouseArea
            anchors.fill: but1
            onClicked: {
                if(but1.state==='')
                    but1.state='s1'
                else if(but1.state==='s1')
                    but1.state='s2'
                else if(but1.state==='s2')
                    but1.state='s3'
                else
                    but1.state=''
            }
        }
        states: [
            State {
                name: "s1"
                PropertyChanges {
                    target: but
                    width:560
                    xPoint:80

                    imageX: 386.5
                    buttonText: "Start the test"
                    buttonTextX: 136.5
                }
            },
            State {
                name: "s2"
                PropertyChanges {
                    target: but
                    width:560
                    xPoint:80
                    infoVisible:false

                    borderRadius:0
                    progressOpacity:1
                    opacity:1
                }
            },
            State {
                name: "s3"
                PropertyChanges {
                    target: but
                    width:242
                    height:80
                    xPoint:80
                    borderRadius:20

                    buttonText:"Done"
                    buttonTextX:40
                    buttonTextColor: "white"
                    imageSrc: "Vector (1).png"
                    imageX: 169.63
                    backGradient0:"#0B9821"
                    backGradient1:"#1A8502"
                }
            }
        ]
//        transitions: [
//            Transition {
//                from: ""
//                to: "s2"
//                reversible:true
//                NumberAnimation {
//                    target: but1
//                    property: "width,x"
//                    duration: 500
//                    easing.type: Easing.InOutQuad
//                }
//            }
//        ]
    }
}
