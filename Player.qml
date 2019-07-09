import QtQuick 2.12
import VLCQt 1.1

Rectangle {
    id: player;
    color: "orange";

    property alias vlcPlayerAlias: vlcPlayer;


    VlcPlayer {
        id: vlcPlayer;
        autoplay: true;
        onStateChanged:
        {
            console.log("VlcVideoPlayer state:", state, url);
            debugOutput();
        }
    }

    function debugOutput()
    {
        console.log("vlcVideoOutput size: ", vlcVideoOutput.width, vlcVideoOutput.height)
        console.log("vlcVideoOutput parent size: ", vlcVideoOutput.parent.width, vlcVideoOutput.parent.height);
        console.log("fillMode: ", vlcVideoOutput.fillMode);
        console.log("aspectRatio: ", vlcVideoOutput.aspectRatio);
        console.log("cropRatio: ", vlcVideoOutput.cropRatio);
    }

    VlcVideoOutput {
        id: vlcVideoOutput
        anchors.fill: parent;
        source: vlcPlayer;

        fillMode: 1;
//        aspectRatio: 2;
//        cropRatio: 0;
        onFillModeChanged:
        {
            console.log("FillModeChanged");
            debugOutput();
        }

        onAspectRatioChanged:
        {
            console.log("AspectRatioChanged");
            debugOutput();
        }
        onCropRatioChanged:
        {
            console.log("CropRatioChanged");
            debugOutput()
        }
    }


}
