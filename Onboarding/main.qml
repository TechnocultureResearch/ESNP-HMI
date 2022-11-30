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
            id:rec1
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
            id: t
            text: "(noun)"
            font.family: "Calibri Light"
            font.pixelSize: 24
            color:"grey"
            x:80
            y: 400
        }
        Text {
            id: t3
            text: "It is the ability to
instantaneously identify
and label tones with
their musical note
names, without the aid
of an external reference
tone"
            font.family: "Calibri"
            font.pixelSize: 24
            x:80
            y: 432
        }
        Rectangle{
            id:rec2
            opacity: 0
            width: 560
            height: 440
            border.color:"#61F479"
            border.width: 1
            radius:20
            y:80
            x:80
            gradient: Gradient{
                GradientStop{
                    position: 0
                    color: "#C4FFCE"
                }
                GradientStop{
                    position: 1
                    color: "#A7FFB6"
                }
            }
            Image {
                id: img
                source: "Vector (3).png"
                x:40
                y:43
                height: 200.8
                width: 201.6
            }
            Text {
                id: t4
                text: "You are a variant A"
                x:40
                y:308
                color:"#099822"
                font.family: "Calibri Light"
                font.weight: Font.Thin
                font.pixelSize: 50
            }
            Text {
                id: t5
                x:40
                y:368
                text: "Learn More"
                color:"#4A4A4A"
                font.family: "Calibri"
                font.pixelSize: 30
            }
            Image {
                id: img1
                source: "Vector (2).png"
                x:213.2
                y:373.2
                height: 25.6
                width: 25.6
            }
            MouseArea{
                id: infoarea
                anchors.fill: img1
                onClicked: {
                    if(rec2.state=='')
                        rec2.state='st1'
                    else
                        rec2.state=''
                }
            }
            states: State {
                name: "st1"
                PropertyChanges {
                    target: rec2
                    x:-520
                }
                PropertyChanges {
                    target: rec3
                    x:80
                }
            }
        }
        Rectangle{
            id:rec3
            opacity: 0
            width: 560
            height: 440
            border.color:"#61F479"
            border.width: 1
            radius:20
            x:680
            y:80
            gradient: Gradient{
                GradientStop{
                    position: 0
                    color: "#C4FFCE"
                }
                GradientStop{
                    position: 1
                    color: "#A7FFB6"
                }
            }
            Image {
                id: img2
                source: "Vector (4).png"
                x:40.6
                y:42.93
                height: 32.17
                width: 36.8
            }
            Rectangle{
                id:rec4
                color:"#E0FFE3"
                anchors.centerIn: parent
                radius: 20
                border.width: 1
                border.color: "#6BF582"
                height: 262
                width: 262
                Image {
                    id: img3
                    source: "qr_code_PNG26 1.png"
                    anchors.centerIn: parent
                }
            }

            Image {
                id: img4
                source: "Group 1.png"
                x:149
                y:350
                Text {
                    id: t8
                    text: "Scan view the report"
                    anchors.centerIn: parent
                    color:"white"
                    font.pixelSize: 30
                    font.family: "Calibri"
                }
            }
            MouseArea{
                id: infoarea1
                anchors.fill: img2
                onClicked: {
                    if(rec3.state=='')
                        rec3.state='st2'
                    else
                        rec3.state=''
                }
            }
            states: State {
                name: "st2"
                PropertyChanges {
                    target: rec2
                    x:80
                }
                PropertyChanges {
                    target: rec3
                    x:680
                }
            }
        }
            Mybutton{
                visible: true
                id: but
                width: 222
                height: 80
                xPoint: 428
                yPoint: 560
                buttonText: "Start"
                borderColor: "#0B9821"
                borderWidth: 1
                borderRadius: 20
                buttonTextColor: "#0B9821"
                buttonTextX: 30

                backGradient0: "#C2FFCD"
                backGradient1: "#AFFFBD"

                imageSrc: "Vector.png"
                imageX: 150.6
                onWidthChanged: {
                    t2.opacity=0
                    t.color="black"
                    t.text="This test wil take"
                    t.font.pixelSize=40
                    t.font.weight=Font.Thin
                    t.y=432
                    t3.color="#0B9821"
                    t3.text="30 minutes"
                    t3.font.pixelSize=40
                    t3.y=480
                }
                onInfoVisibleChanged: {
                    t1.text="8%"
                    t1.font.pixelSize=200
                    t1.font.family="Calibri Light"
                    t1.y=40
                    t.text="Time Pending"
                    t.y=380
                    t3.text="23:46:37"
                    t3.y=428
                    t3.font.pixelSize=100
                    t3.font.family="Calibri Light"
                    t3.font.letterSpacing=8
                }
                onImageSrcChanged: {
                    rec1.opacity=0
                    t.opacity=0
                    t3.opacity=0
                    rec2.opacity=1
                    rec3.opacity=1
                }

//                MouseArea{
//                    id:mouseArea
//                    anchors.fill: but1
//                    onClicked: {
//                        if(but1.state==='')
//                            but1.state='s1'
//                        else if(but1.state==='s1')
//                            but1.state='s2'
//                        else if(but1.state==='s2')
//                            but1.state='s3'
//                        else
//                            but1.state=''
//                    }
//                }
//                states: [
//                    State {
//                        name: "s1"
//                        PropertyChanges {
//                            target: but
//                            width:560
//                            xPoint:80

//                            imageX: 386.5
//                            buttonText: "Start the test"
//                            buttonTextX: 136.5
//                        }
//                    },
//                    State {
//                        name: "s2"
//                        PropertyChanges {
//                            target: but
//                            width:560
//                            xPoint:80
//                            infoVisible:false

//                            borderRadius:0
//                            progressOpacity:1
//                            opacity:1
//                        }
//                    },
//                    State {
//                        name: "s3"
//                        PropertyChanges {
//                            target: but
//                            width:242
//                            height:80
//                            xPoint:80
//                            borderRadius:20

//                            buttonText:"Done"
//                            buttonTextX:40
//                            buttonTextColor: "white"
//                            imageSrc: "Vector (1).png"
//                            imageX: 169.63
//                            backGradient0:"#0B9821"
//                            backGradient1:"#1A8502"
//                        }
//                    }
//                ]
//                transitions: [
//                    Transition {
//                        from: ""
//                        to: "s2"
//                        reversible:true
//                        NumberAnimation {
//                            target: but1
//                            property: "width,x"
//                            duration: 500
//                            easing.type: Easing.InOutQuad
//                        }
//                    }
//                ]
            }
    }

}
