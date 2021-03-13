import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    property int  myValue: 0



    Rectangle
    {
        id: rect
        anchors.centerIn: parent
        width: 215
        height: 20
        border.color: "green"
        color: "azure"
        border.width: 1
        radius: 10
        Rectangle{
            id: rect1
            y:3
            x:4
            width: 55
            height: 14
            gradient: "MalibuBeach"//"Seashore"
            radius: 10
        }


        Text {
            id: text1
            font.pointSize: 7
            text: qsTr("Loading...")
            x: 80
            y: -20
            //anchors.centerIn: parent


        }
    }

Timer{
    interval: 100
    running:  true
    repeat: true
    onTriggered: {
        console.log ("TIMER TRIGERRED:",myValue)
        if (rect1.width>=200)
    {
            rect1.width = 5
        }
        else
        {
            rect1.width+=5
        }
    }
}



}
