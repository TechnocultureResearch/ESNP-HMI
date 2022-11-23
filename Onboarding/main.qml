import QtQuick 2.0
import QtQuick.Controls 2.5

ApplicationWindow {
    width: 720
    height: 720
    visible: true

        Text {
            id: t1
            text: "ADCY8"
            font.pixelSize: 100
            font.family: "Helvetica"
            x:80
            y:59.5
        }

        Text {
            id: t2
            text: "Absolute Pitch"
            font.family: "Helvetica"
            font.pixelSize: 100
            x:80
            y: 178.5
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
            text: "Start"
            width: 222
            height: 80
            x: 428
            y: 560
            topPadding: 16
            bottomPadding: 16
            leftPadding: 30
            rightPadding: 30
            font.pixelSize: 40
            palette {
                buttonText: "#0B9821"
            }
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

//            Image {
//                id: img1
//                source: "C:\Users\Admin\Downloads\Vector.png"
//            }
        }
}
