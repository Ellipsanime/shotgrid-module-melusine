import QtQuick 2.3
import QtQuick.Controls 1.6
import QtQuick.Layouts 1.4
import QtQuick.Controls.Material 2.12
import QtQuick.Controls.Universal 2.12

TabView {
    anchors.leftMargin: 2.5
    anchors.rightMargin: 2.5
    anchors.topMargin: 2.5
    anchors.bottomMargin: 2.5
    anchors.fill: parent
    Tab {
        title: "Batch"
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
    Tab {
        title: "Schedule"
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
                        id : greenRect
                        color : 'green'
                        Layout.rowSpan : 2
                        Layout.columnSpan : 12
                        Layout.preferredWidth  : grid.prefWidth(this)
                        Layout.preferredHeight : grid.prefHeight(this)
                    }
                }
    }
    Tab {
        title: "Monitoring"
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
