import QtQuick 2.7
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls.Material 2.15
import QtQuick.Controls.Universal 2.15
import QtWebView 1.15


ApplicationWindow {

    Material.theme: Material.Dark
    Material.accent: Material.Green

    title: "Leecher manager"
    width: 520
    height: 480
    visible: true


    header: TabBar {
        id: tabs
        width: parent.width
        TabButton {
            text: qsTr("Batch")
            width: 120
        }
        TabButton {
            text: qsTr("Schedule")
            width: 120
        }
        TabButton {
            text: qsTr("Monitoring")
            width: 120
        }
    }
    StackLayout {
        anchors.fill: parent
        currentIndex: tabs.currentIndex

        Item {
            id: batchTab
//            Layout.preferredWidth: parent.width
                    GridLayout {
                        id : batchGrid
                        anchors.fill: parent
                        rows    : 10
                        columns : 12
                        property double colMulti : batchGrid.width / batchGrid.columns
                        property double rowMulti : batchGrid.height / batchGrid.rows
                        function prefWidth(item){
                            return colMulti * item.Layout.columnSpan
                        }
                        function prefHeight(item){
                            return rowMulti * item.Layout.rowSpan
                        }

                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            Label {
                                leftPadding: 9
                                anchors.verticalCenter:parent.verticalCenter
                                text: qsTr("OpenPype project")
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 9
                            Layout.minimumHeight: 30
                            Layout.maximumHeight: 35
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            ComboBox {
                                anchors.leftMargin: 15
                                anchors.rightMargin: 15
//                                anchors.topMargin: 5
//                                anchors.bottomMargin: 5
                                anchors.fill: parent
//                                anchors.centerIn: parent

                                id: batchProject
                                model: ["..."]
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            Label {
                                leftPadding: 9
                                anchors.verticalCenter:parent.verticalCenter
                                text: qsTr("Url")
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 9
                            Layout.minimumHeight: 30
                            Layout.maximumHeight: 35
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            TextField {
                                anchors.leftMargin: 15
                                anchors.rightMargin: 15
//                                anchors.topMargin: 5
//                                anchors.bottomMargin: 5
                                anchors.fill: parent
//                                anchors.centerIn: parent
                                id: url
                                placeholderText: qsTr("https://....")
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            Label {
                                leftPadding: 9
                                anchors.verticalCenter:parent.verticalCenter
                                text: qsTr("Script name")
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 9
                            Layout.minimumHeight: 30
                            Layout.maximumHeight: 35
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            TextField {
                                anchors.leftMargin: 15
                                anchors.rightMargin: 15
                                anchors.topMargin: 5
                                anchors.bottomMargin: 5
                                anchors.fill: parent
                                anchors.centerIn: parent
                                id: scriptName
                                placeholderText: qsTr("Your Shotgrid script name...")
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            Label {
                                leftPadding: 9
                                anchors.verticalCenter:parent.verticalCenter
                                text: qsTr("API Key")
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 9
                            Layout.minimumHeight: 30
                            Layout.maximumHeight: 35
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            TextField {
                                anchors.leftMargin: 15
                                anchors.rightMargin: 15
                                anchors.topMargin: 5
                                anchors.bottomMargin: 5
                                anchors.fill: parent
                                anchors.centerIn: parent
                                id: apiKey
                                placeholderText: qsTr("Your Shotgrid API Key...")
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            Label {
                                leftPadding: 9
                                anchors.verticalCenter:parent.verticalCenter
                                text: qsTr("Shotgrid project ID")
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 9
                            Layout.minimumHeight: 30
                            Layout.maximumHeight: 35
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            TextField {
                                anchors.leftMargin: 15
                                anchors.rightMargin: 15
                                anchors.topMargin: 5
                                anchors.bottomMargin: 5
                                anchors.fill: parent
                                anchors.centerIn: parent
                                id: shotgridProjectId
                                placeholderText: qsTr("Your Shotgrid project ID...")
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            Label {
                                leftPadding: 9
                                anchors.verticalCenter:parent.verticalCenter
                                text: qsTr("Fields mapping")
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                        Item {

                            Layout.rowSpan   : 3
                            Layout.columnSpan: 9
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)

                            ScrollView {
                                anchors.leftMargin: 15
                                anchors.rightMargin: 15
                                anchors.topMargin: 5
                                anchors.bottomMargin: 5
                                anchors.fill: parent
    //                            Layout.minimumHeight: 30
    //                            Layout.maximumHeight: 35

                                TextArea {
                                    wrapMode: TextArea.Wrap
                                    id: fieldsMapping
                                }
                            }
                        }
                        Rectangle {
                            id : greenRect
                            color : 'green'
                            Layout.rowSpan : 1
                            Layout.columnSpan : 12
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                        }

                }

//            Rectangle {
//                color: 'red'
//                anchors.fill: parent
//            }

//            Component {
//                id: batchStackView
//
//
//                    Row {
//                        spacing: 10
//                        Button {
//                            text: "Push"
//                            onClicked: stack.push(mainView)
//                        }
//                        Button {
//                            text: "Pop"
//                            enabled: stack.depth > 1
//                            onClicked: stack.pop()
//
//                        }
//                        Text {
//                            text: stack.depth
//                        }
//                    }
//
//                }
        }
        Item {
            id: scheduleTab
            property int sideMargin: 15
                GridLayout {
                    id: scheduleGrid
                    property double colMulti : scheduleGrid.width / scheduleGrid.columns
                    property double rowMulti : scheduleGrid.height / scheduleGrid.rows
                    function prefWidth(item){
                        return colMulti * item.Layout.columnSpan
                    }
                    function prefHeight(item){
                        return rowMulti * item.Layout.rowSpan
                    }

                    rows    : 9
                    columns : 9
                    anchors.fill: parent
                        Label {
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            text: "OP project:"
                        }
                        ComboBox {
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rightMargin: scheduleTab.sideMargin
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 6
                            Layout.fillWidth: true
                            model: ["Loading ..."]
                        }

                        Label {
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            text: "SG url:"
                        }
                        TextField {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 6
                            Layout.fillWidth: true
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rightMargin: scheduleTab.sideMargin
                            placeholderText: "https://my-shotgrid.instance.com"
                        }

                        Label {
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            text: "SG script name:"
                        }
                        TextField {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 6
                            Layout.fillWidth: true
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rightMargin: scheduleTab.sideMargin
                            placeholderText: "My shotgrid script name"
                        }

                        Label {
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            text: "SG API key:"
                        }
                        TextField {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 6
                            Layout.fillWidth: true
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rightMargin: scheduleTab.sideMargin
                            placeholderText: "My shotgrid API Key"
                        }

                        Label {
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            text: "SG project ID:"
                        }
                        TextField {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 6
                            Layout.fillWidth: true
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rightMargin: scheduleTab.sideMargin
                            inputMethodHints: Qt.ImhDigitsOnly
                            placeholderText: "My shotgrid project ID"
                        }

                        Label {
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rowSpan   : 2
                            Layout.columnSpan: 3
                            text: "SG fields mapping:"
                        }

                        ScrollView {
                            Layout.rowSpan   : 2
                            Layout.columnSpan: 6
                            Layout.fillWidth: true
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rightMargin: scheduleTab.sideMargin

                            Layout.preferredWidth  : scheduleGrid.prefWidth(this)
                            Layout.preferredHeight : scheduleGrid.prefHeight(this)
                            ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
                            ScrollBar.vertical.policy: ScrollBar.AlwaysOn
                            TextArea {
                                placeholderText: "JSON mapping goes here"
                                wrapMode: TextArea.Wrap

                            }
                        }

//                        Item {
//                            Layout.rowSpan : 1
//                            Layout.columnSpan : 6
//                        }
                        RowLayout {
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rightMargin: scheduleTab.sideMargin
                            Layout.rowSpan : 1
                            Layout.columnSpan : 9
                            Layout.fillWidth: true
                            Layout.alignment: Qt.AlignRight
    //                        Layout.preferredHeight : 50
    //                        Layout.preferredWidth : 50

                            Button {
                                text: "Run batch"
                            }
                        }

                }







        }
        Item {
            id: monitoringTab
            WebView {
                id: webView
                anchors.fill: parent
                Layout.fillWidth: true
                url: "http://google.com"
            }
        }
    }

    /*
    TabBar {
        anchors.leftMargin: 2.5
        anchors.rightMargin: 2.5
        anchors.topMargin: 2.5
        anchors.bottomMargin: 2.5
        anchors.fill: parent
        TabButton {
            text: qsTr("Batch")
                    GridLayout {
                        id : batchGrid
                        anchors.fill: parent
                        rows    : 10
                        columns : 12
                        property double colMulti : batchGrid.width / batchGrid.columns
                        property double rowMulti : batchGrid.height / batchGrid.rows
                        function prefWidth(item){
                            return colMulti * item.Layout.columnSpan
                        }
                        function prefHeight(item){
                            return rowMulti * item.Layout.rowSpan
                        }

                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            Label {
                                leftPadding: 9
                                anchors.verticalCenter:parent.verticalCenter
                                text: qsTr("OpenPype project")
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 9
                            Layout.minimumHeight: 30
                            Layout.maximumHeight: 35
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            ComboBox {
                                anchors.leftMargin: 15
                                anchors.rightMargin: 15
                                anchors.topMargin: 5
                                anchors.bottomMargin: 5
                                anchors.fill: parent
                                anchors.centerIn: parent

                                id: batchProject
                                model: ["..."]
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            Label {
                                leftPadding: 9
                                anchors.verticalCenter:parent.verticalCenter
                                text: qsTr("Url")
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 9
                            Layout.minimumHeight: 30
                            Layout.maximumHeight: 35
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            TextField {
                                anchors.leftMargin: 15
                                anchors.rightMargin: 15
                                anchors.topMargin: 5
                                anchors.bottomMargin: 5
                                anchors.fill: parent
                                anchors.centerIn: parent
                                id: url
                                placeholderText: qsTr("https://....")
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            Label {
                                leftPadding: 9
                                anchors.verticalCenter:parent.verticalCenter
                                text: qsTr("Script name")
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 9
                            Layout.minimumHeight: 30
                            Layout.maximumHeight: 35
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            TextField {
                                anchors.leftMargin: 15
                                anchors.rightMargin: 15
                                anchors.topMargin: 5
                                anchors.bottomMargin: 5
                                anchors.fill: parent
                                anchors.centerIn: parent
                                id: scriptName
                                placeholderText: qsTr("Your Shotgrid script name...")
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            Label {
                                leftPadding: 9
                                anchors.verticalCenter:parent.verticalCenter
                                text: qsTr("API Key")
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 9
                            Layout.minimumHeight: 30
                            Layout.maximumHeight: 35
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            TextField {
                                anchors.leftMargin: 15
                                anchors.rightMargin: 15
                                anchors.topMargin: 5
                                anchors.bottomMargin: 5
                                anchors.fill: parent
                                anchors.centerIn: parent
                                id: apiKey
                                placeholderText: qsTr("Your Shotgrid API Key...")
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            Label {
                                leftPadding: 9
                                anchors.verticalCenter:parent.verticalCenter
                                text: qsTr("Shotgrid project ID")
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 9
                            Layout.minimumHeight: 30
                            Layout.maximumHeight: 35
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            TextField {
                                anchors.leftMargin: 15
                                anchors.rightMargin: 15
                                anchors.topMargin: 5
                                anchors.bottomMargin: 5
                                anchors.fill: parent
                                anchors.centerIn: parent
                                id: shotgridProjectId
                                placeholderText: qsTr("Your Shotgrid project ID...")
                            }
                        }
                        Item {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            Label {
                                leftPadding: 9
                                anchors.verticalCenter:parent.verticalCenter
                                text: qsTr("Fields mapping")
                                horizontalAlignment: Text.AlignHCenter
                                verticalAlignment: Text.AlignVCenter
                            }
                        }
                        Item {

                                Layout.rowSpan   : 3
                                Layout.columnSpan: 9
                                Layout.preferredWidth  : batchGrid.prefWidth(this)
                                Layout.preferredHeight : batchGrid.prefHeight(this)

    //                        ScrollView {


    //                            Layout.minimumHeight: 30
    //                            Layout.maximumHeight: 35

                                TextArea {
                                    anchors.leftMargin: 15
                                    anchors.rightMargin: 15
                                    anchors.topMargin: 5
                                    anchors.bottomMargin: 5
                                    anchors.fill: parent
                                    anchors.centerIn: parent
                                    id: fieldsMapping
                                }
    //                        }
                        }
                        Rectangle {
                            id : greenRect
                            color : 'green'
                            Layout.rowSpan : 1
                            Layout.columnSpan : 12
                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                        }

                }

        }
        TabButton {
            text: qsTr("Schedule")
                    GridLayout {
                        id : grid
                        anchors.fill: parent
                        rows    : 12
                        columns : 12
                        property double colMulti : grid.width / grid.columns
                        property double rowMulti : grid.height / grid.rows
                        function prefWidth(item){
                            return colMulti * item.Layout.columnSpan
                        }
                        function prefHeight(item){
                            return rowMulti * item.Layout.rowSpan
                        }

                        Rectangle {
                            color : 'red'
                            Layout.rowSpan   : 10
                            Layout.columnSpan: 3
                            Layout.preferredWidth  : grid.prefWidth(this)
                            Layout.preferredHeight : grid.prefHeight(this)
                        }
                        Rectangle {
                            color : 'yellow'
                            Layout.rowSpan   : 10
                            Layout.columnSpan: 9
                            Layout.preferredWidth  : grid.prefWidth(this)
                            Layout.preferredHeight : grid.prefHeight(this)
                        }
                        Rectangle {
                            id : greenRect2
                            color : 'green'
                            Layout.rowSpan : 2
                            Layout.columnSpan : 12
                            Layout.preferredWidth  : grid.prefWidth(this)
                            Layout.preferredHeight : grid.prefHeight(this)
                        }
                    }
        }
        TabButton {
            text: qsTr("Monitoring")
            Rectangle {
                color: "green"

                StackLayout {
                    id: layout3
                    anchors.fill: parent
                    currentIndex: 1
                    Rectangle {
                        color: 'teal'
                        implicitWidth: 200
                        implicitHeight: 200
                    }
                    Rectangle {
                        color: 'plum'
                        implicitWidth: 300
                        implicitHeight: 200
                    }
                }
            }
        }
    }
    */
}