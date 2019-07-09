import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 1080
    height: 1920
    title: qsTr("Hello World")

    MouseArea
    {
        anchors.fill: parent;
        onClicked:
        {
            console.log("PLAYING MOVIE");
            player.vlcPlayerAlias.url = ("file:///problematic_video.mp4");
        }
    }

    Player
    {
        id: player
        width: parent.width;
        height: 607.5;
    }
}
