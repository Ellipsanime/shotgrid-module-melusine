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
    height: 540
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
                GridLayout {
                    id: batchGrid
                    property double colMulti : batchGrid.width / batchGrid.columns
                    property double rowMulti : batchGrid.height / batchGrid.rows
                    function prefWidth(item){
                        return colMulti * item.Layout.columnSpan
                    }
                    function prefHeight(item){
                        return rowMulti * item.Layout.rowSpan
                    }

                    rows    : 12
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
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            text: "Overwrite data:"
                        }
                        CheckBox {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 6
                            Layout.alignment: Qt.AlignLeft
                            checked: false
                        }

                        Label {
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rowSpan   : 3
                            Layout.columnSpan: 3
                            text: "SG fields mapping:"
                        }
                        ScrollView {
                            Layout.rowSpan   : 3
                            Layout.columnSpan: 6
                            Layout.fillWidth: true
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rightMargin: scheduleTab.sideMargin

                            Layout.preferredWidth  : batchGrid.prefWidth(this)
                            Layout.preferredHeight : batchGrid.prefHeight(this)
                            ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
                            ScrollBar.vertical.policy: ScrollBar.AlwaysOn
                            TextArea {
                                placeholderText: "JSON mapping goes here"
                                wrapMode: TextArea.Wrap

                            }
                        }
                        RowLayout {
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rightMargin: scheduleTab.sideMargin
                            Layout.rowSpan : 1
                            Layout.columnSpan : 9
                            Layout.fillWidth: true
                            Layout.alignment: Qt.AlignRight
                            Button {
                                text: "Run batch"
                            }
                        }

                }
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
                        RowLayout {
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rightMargin: scheduleTab.sideMargin
                            Layout.rowSpan : 1
                            Layout.columnSpan : 9
                            Layout.fillWidth: true
                            Layout.alignment: Qt.AlignRight
                            Button {
                                text: "Schedule batch"
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
}