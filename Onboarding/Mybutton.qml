import QtQuick 2.0
Item{
    Rectangle{
        id:but1
        width: 222
        height: 80
        x: 428
        y: 560
        Rectangle{
            id: info
            anchors.verticalCenter: parent.verticalCenter
            Text{
                id:t1
                text: "Start"
                font.pixelSize: 40
                x:30
                color: "#0B9821"
                anchors.verticalCenter: parent.verticalCenter
            }
            Image {
                id: img1
                source: "Vector.png"
                x:150.6
                anchors.verticalCenter: parent.verticalCenter
            }
        }
//        background
        border.color: "#0B9821"
        border.width: 1
        radius: 20
        gradient: Gradient{
            GradientStop{
                position: 0
                color: "#C2FFCD"
            }
            GradientStop{
                position: 1
                color: "#AFFFBD"
            }
        }
        Rectangle{
            id:progress
            opacity: 0
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
        Rectangle{
            id:done
            opacity: 0
            width:242
            height: 80
            Text {
                id: t2
                text: "Done"
                x:40
                font.family: "Calibri Light"
                font.pixelSize: 40
                color: "white"
                anchors.verticalCenter: parent.verticalCenter
            }
            Image {
                id: img2
                source: "Vector (1).png"
                x:169.63
                anchors.verticalCenter: parent.verticalCenter
            }
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
            anchors.fill: parent
            onClicked: {
                if(but1.state=='')
                    but1.state='s1'
                else if(but1.state=='s1')
                    but1.state='s2'
                else if(but1.state=='s2')
                    but1.state='s3'
                else
                    but1.state=''
            }
        }
        states: [
            State {
                name: "s1"
                PropertyChanges {
                    target: but1
                    width:560
                    x:80
                }
                PropertyChanges {
                    target: img1
                    width:32
                    height:32
                    x:386.5
                    y:24
                }
                PropertyChanges {
                    target: t1
                    text:"Start the test"
                    x:136.5
                }
            },
            State {
                name: "s2"
                PropertyChanges {
                    target: info
                    visible: false
                }
                PropertyChanges {
                    target: but1
                    width:560
                    x:80
                    radius:0
                }
                PropertyChanges {
                    target: progress
                    opacity:1
                }
            },
            State {
                name: "s3"
                PropertyChanges {
                    target: but1
                    width:242
                    x:80
                    radius:20
                }
                PropertyChanges {
                    target: done
                    opacity:1
                    radius:20
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
