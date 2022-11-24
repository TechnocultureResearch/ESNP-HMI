import QtQuick 2.0
import QtQuick.Controls 2.5

ApplicationWindow {
    width: 720
    height: 720
    visible: true
    Rectangle{
        id:r1
        anchors.fill: parent
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
//        Text {
//            id: t1
//            text: "ADCY8"
//            font.pixelSize: 100
//            font.family: "Helvetica"
//            x:80
//            y:59.5
//        }

//        Text {
//            id: t2
//            text: "Absolute Pitch"
//            font.family: "Helvetica"
//            font.pixelSize: 100
//            x:80
//            y: 178.5
////            fontSizeMode: Text.Fit
//        }

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
//            Rectangle{
//                icon.name: "Arrow"
//                icon.source: "/Users/Public/Downloads/Vector.png"
//            }
//            icon.source:"Vector.png"
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
                    target: t3
                    color:"green"
                }
            }
            transitions: [
                Transition {
                    from: ""
                    to: "s2"
                    reversible: true
                    ParallelAnimation{
                        NumberAnimation{duration: 500}
                    }
                }
            ]
        }
    }
//    Rectangle{
//        id:r2
//        visible: false
//        Text {
//            id: t
//            text: qsTr("Hello")
//        }
//        states: State{
//            name:"s2"
//            when: mouseArea.clicked===true
//            PropertyChanges {
//                target: r2
//                visible:true
//            }
//        }
//        transitions: [
//            Transition {
//                from: "s2"
//                to: "s1"
//                ParallelAnimation{
//                    NumberAnimation{duration: 500}
//                }
//            }
//        ]
//    }
}
