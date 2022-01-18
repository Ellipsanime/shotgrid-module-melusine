import QtQuick 2.7
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls.Material 2.15
import QtWebEngine 1.8
import QtWebChannel 1.8


ApplicationWindow {
    title: "SG Leecher manager"
    width: 520
    height: 540
    visible: true

    QtObject {
        id: pageObject

        // ID, under which this object will be known at WebEngineView side
        WebChannel.id: "backend"

        property string someProperty: "Break on through to the other side"

        signal someSignal(string message)

        function changeText(newText) {
            txt.text = newText;
            return "New text length: " + newText.length;
        }
    }
    Text {
        id: txt
        text: "Some text"
        onTextChanged: {
            // this signal will trigger a function at WebEngineView side (if connected)
            pageObject.someSignal(text)
        }
    }

    WebEngineView {
        anchors.fill: parent
        webChannel: channel
        url: "../html/index.html"
        onContextMenuRequested: {
            request.accepted = true
        }
    }

    WebChannel {
        id: channel
        registeredObjects: [pageObject]
    }

    Button {
        text: "Enlighten"
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: 30
        onClicked: {
            txt.text = "123"
        }
    }
}