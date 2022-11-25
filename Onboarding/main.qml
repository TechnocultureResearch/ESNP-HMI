import QtQuick 2.0
import QtQuick.Controls 2.5

ApplicationWindow {
    width: 720
    height: 720
    visible: true
    Rectangle{
        id:r1
        anchors.fill: parent
        opacity: 0
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

        Button{
            id:but1
            width: 222
            height: 80
            Text{
                text: "Start"
                font.pixelSize: 40
                x:30
                y: 16
                color: "#0B9821"
            }
            x: 428
            y: 560
            background:  Rectangle{
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
            }

            Image {
                id: img1
                source: "Vector.png"
                x:150.6
                y:21.6
            }
            MouseArea{
                id:mouseArea
                anchors.fill: parent
            }
            states: State {
                name: "s1"
                when: mouseArea.pressed===true
                PropertyChanges {
                    target: r1
                    opacity:0
                }
            }
            transitions: [
                Transition {
                    from: ""
                    to: "s1"
                    reversible: true
                }
            ]
        }
    }
    Rectangle{
        id:r2
        visible: true
        opacity:1
        Text {
            id: t4
            text: "ADCY8"
            font.pixelSize: 100
            font.family: "Calibri Light"
            x:80
            y:55.5
            font.weight: Font.Thin
        }
        Text {
            id: t5
            text: "This test will take"
            width: 559
            height: 48
            y:432
            x:81
            font.pixelSize: 40
            font.family: "Calibri Light"
            font.weight: Font.Thin
        }
        Text {
            id: t6
            text: "30 minutes"
            width: 559
            height: 48
            y:480
            x:81
            font.pixelSize: 40
            font.family: "Calibri Light"
            font.weight: Font.Medium
            color: "#0B9821"
        }
        Button{
            id:but2
            width: 559
            height: 80
            Text{
                text: "Start the test"
                font.pixelSize: 40
                x:136.5
                y: 16
                color: "#0B9821"
            }
            x: 80
            y: 560
            background:  Rectangle{
                border.color: "#61F479"
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
            }

            Image {
                id: img2
                source: "Vector.png"
                x:386.5
                y:24
                width: 32
                height: 32
            }
            MouseArea{
                id:mouseArea1
                anchors.fill: parent
            }
            states: State {
                name: "s2"
                when: mouseArea.pressed===true
                PropertyChanges {
                    target: t4
                    color:"green"
                }
            }
            transitions: [
                Transition {
                    from: ""
                    to: "s2"
                    reversible: true
                }
            ]
        }
    }
}
