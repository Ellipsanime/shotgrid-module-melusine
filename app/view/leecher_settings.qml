import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls.Material 2.15
import QtWebView 1.15


ApplicationWindow {

    title: "SG Leecher manager"
    width: 520
    height: 540
    visible: true


    Material.theme: Material.Dark
    Material.accent: Material.Green

    header: TabBar {
        id: tabs
        width: parent.width
        TabButton {
            text: "Batch"
            width: 120
        }
        TabButton {
            text: "Schedule"
            width: 120
        }
        TabButton {
            text: "Monitoring"
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
                    property string validColor: "#EEEEEE"
                    property string invalidColor: "#E91E63"
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
                        // Row 1
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

                        // Row 2
                        Label {
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            text: "SG url:"
                        }
                        TextField {
                            Layout.fillWidth: true
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rightMargin: scheduleTab.sideMargin
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 6
                            selectByMouse: true
                            placeholderText: "https://my-shotgrid.instance.com"
                            validator: RegularExpressionValidator {
                                regularExpression: /^(?:http(s)?:\/\/)?[\w.-]+(?:\.[\w\.-]+)+[\w\-\._~:/?#[\]@!\$&'\(\)\*\+,;=.]+$/
                            }
                            color: acceptableInput ? batchGrid.validColor : batchGrid.invalidColor
                        }

                        // Row 3
                        Label {
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            text: "SG script name:"
                        }
                        TextField {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 6
                            selectByMouse: true
                            Layout.fillWidth: true
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rightMargin: scheduleTab.sideMargin
                            placeholderText: "My shotgrid script name"
                            validator: RegularExpressionValidator {
                                regularExpression: /^(?:.{3,})$/
                            }
                            color: acceptableInput ? batchGrid.validColor : batchGrid.invalidColor
                        }

                        // Row 4
                        Label {
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            text: "SG API key:"
                        }
                        TextField {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 6
                            selectByMouse: true
                            Layout.fillWidth: true
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rightMargin: scheduleTab.sideMargin
                            placeholderText: "My shotgrid API Key"
                        }

                        // Row 5
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
                            selectByMouse: true
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rightMargin: scheduleTab.sideMargin
                            inputMethodHints: Qt.ImhDigitsOnly
                            placeholderText: "My shotgrid project ID"
                            validator: RegularExpressionValidator {
                                regularExpression: /^\d{1,}$/
                            }
                            color: acceptableInput ? batchGrid.validColor : batchGrid.invalidColor
                        }

                        // Row 6
                        Label {
                            Layout.leftMargin: scheduleTab.sideMargin
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 3
                            text: "Overwrite data:"
                        }
                        CheckBox {
                            Layout.rowSpan   : 1
                            Layout.columnSpan: 6
                            Layout.leftMargin: 2
                            Layout.alignment: Qt.AlignLeft
                            checked: false
                        }

                        // Row 7,8,9
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
                                selectByMouse: true

                            }
                        }

                         // Row 10
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
                    property string validColor: "#EEEEEE"
                    property string invalidColor: "#E91E63"
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
                            selectByMouse: true
                            validator: RegularExpressionValidator {
                                regularExpression: /^(?:http(s)?:\/\/)?[\w.-]+(?:\.[\w\.-]+)+[\w\-\._~:/?#[\]@!\$&'\(\)\*\+,;=.]+$/
                            }
                            color: acceptableInput ? scheduleGrid.validColor : scheduleGrid.invalidColor
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
                            selectByMouse: true
                            validator: RegularExpressionValidator {
                                regularExpression: /^.{3,}$/
                            }
                            color: acceptableInput ? scheduleGrid.validColor : scheduleGrid.invalidColor
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
                            selectByMouse: true
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
                            selectByMouse: true
                            validator: RegularExpressionValidator {
                                regularExpression: /^\d{1,}$/
                            }
                            color: acceptableInput ? scheduleGrid.validColor : scheduleGrid.invalidColor
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
                                selectByMouse: true

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
            // TODO add gridview from https://opensourcelibs.com/lib/qmlgrid and https://github.com/hahn-kev/QmlGrid
//            WebView {
//                id: webView
//                anchors.fill: parent
//                Layout.fillWidth: true
//                url: "https://www.whatismybrowser.com/"
//            }
        }
    }
}