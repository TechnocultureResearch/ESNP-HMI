import QtQuick 2.0
import QtQuick.Controls 2.5

ApplicationWindow {
    width: 720
    height: 720
    visible: true
    Rectangle{
        id:r1
        anchors.fill: parent
        opacity: 1
//        ListView {
//            anchors.fill: parent;
//            model: Qt.fontFamilies()
//            delegate: Item {
//                height: 40;
//                width: ListView.view.width
//                Text {
//                    anchors.centerIn: parent
//                    text: modelData;
//                }
//            }
//        }
        Rectangle{
            border.width: 0
            width: 560
            height: 240
            Text {
                id: t1
                text: "ADCY8"
                font.pixelSize: 100
                font.family: "Calibri Light"
                x:80
                y:55.5
                font.weight: Font.Thin
            }

            TextField {
                id: t2
                text: "Absolute Pitch"
                font.family: "Helvetica"
                font.pixelSize: 100
                x:68
                y: 158.5
                wrapMode: Text.WordWrap
                background: Rectangle{
                    anchors.fill: parent
                    border.width: 0
                }
            }
        }

        Text {
            id: t3
            text: "(noun)
It is the ability to
instantaneously identify
and label tones with
their musical note
names, without the aid
of an external reference
tone"
            font.family: "Helvetica"
            font.pixelSize: 24
            x:80
            y: 400
        }
        Item {
            Mybutton{
                visible: true
                id: but

            }
        }
    }
//    Rectangle{
//        id:r2
//        visible: true
//        opacity:0
//        Text {
//            id: t4
//            text: "ADCY8"
//            font.pixelSize: 100
//            font.family: "Calibri Light"
//            x:80
//            y:55.5
//            font.weight: Font.Thin
//        }
//        Text {
//            id: t5
//            text: "This test will take"
//            width: 559
//            height: 48
//            y:432
//            x:81
//            font.pixelSize: 40
//            font.family: "Calibri Light"
//            font.weight: Font.Thin
//        }
//        Text {
//            id: t6
//            text: "30 minutes"
//            width: 559
//            height: 48
//            y:480
//            x:81
//            font.pixelSize: 40
//            font.family: "Calibri Light"
//            font.weight: Font.Medium
//            color: "#0B9821"
//        }
//        Button{
//            id:but2
//            width: 559
//            height: 80
//            Text{
//                text: "Start the test"
//                font.pixelSize: 40
//                x:136.5
//                y: 16
//                color: "#0B9821"
//            }
//            x: 80
//            y: 560
//            background:  Rectangle{
//                border.color: "#61F479"
//                border.width: 1
//                radius: 20
//                gradient: Gradient{
//                    GradientStop{
//                        position: 0
//                        color: "#C2FFCD"
//                    }
//                    GradientStop{
//                        position: 1
//                        color: "#AFFFBD"
//                    }
//                }
//            }

//            Image {
//                id: img2
//                source: "Vector.png"
//                x:386.5
//                y:24
//                width: 32
//                height: 32
//            }
//            MouseArea{
//                id:mouseArea1
//                anchors.fill: parent
//            }
//            states: State {
//                name: "s2"
//                when: mouseArea.pressed===true
//                PropertyChanges {
//                    target: t4
//                    color:"green"
//                }
//            }
//            transitions: [
//                Transition {
//                    from: ""
//                    to: "s2"
//                    reversible: true
//                }
//            ]
//        }
//    }
//    Rectangle{
//        id:r3
//        opacity: 0
//        Text {
//            id: tr3
//            text: "8%"
//            font.pixelSize: 200
//            font.family: "Calibri Light"
//            font.weight: Font.Thin
//            lineHeight: 238.67
//            x:81
//            y:40
//        }
//        Rectangle{
//            id:rt1
//            x:80
//            y:283
//            width: 559
//            height: 342
//            Text {
//                id: t1r3
//                text: "Time Pending"
//                y:97
//                font.pixelSize: 40
//                font.family: "Calibri Light"
//                font.weight: Font.Thin
//            }
//            Text {
//                id: t2r3
//                text: "23:46:37"
//                y:145
//                font.pixelSize: 100
//                font.family: "Calibri Light"
//                font.weight: Font.Thin
//                color: "#0B9821"
//            }
//        }
//        Rectangle{
//            id:progress
//            width:559
//            height: 80
//            y:560
//            x:80
//            border.color: "#61F479"
//            border.width: 1
//            radius: 20
//            gradient: Gradient{
//                GradientStop{
//                    position: 0
//                    color: "#C4FFCE"
//                }
//                GradientStop{
//                    position: 1
//                    color: "#A8FFB7"
//                }
//            }


//            layer.effect: OpacityMask {
//                maskSource: Item {
//                    width: rect.width
//                    height: rect.height
//                    Rectangle {
//                        anchors.centerIn: parent
//                        width: rect.adapt ? rect.width : Math.min(rect.width, rect.height)
//                        height: rect.adapt ? rect.height : width
//                        radius: 30
//                    }
//                }
//            }

//            Rectangle{
//                width:95
//                height: progress.height
//                border.color: "#61F479"
//                border.width: 1
//                gradient: Gradient{
//                    GradientStop{
//                        position: 0
//                        color: "#0B9821"
//                    }
//                    GradientStop{
//                        position: 1
//                        color: "#1A8502"
//                    }
//                }
//            }
//        }
//    }
}
