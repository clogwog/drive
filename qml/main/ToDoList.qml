import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3


import QtQmlTricks.SmartDataModels 2.0;

import "../components"

Item
{
    anchors.fill: parent
    function addNewTodoToList()
    {
        DataAccess.addNewTodo();
        listOfLists.positionViewAtEnd();
        myvertscroll.increase();
    }

    Frame
    {
        id: frame
        width: parent.width
        height: parent.height


        ListView {
            id: listOfLists
            width: parent.width
            height: parent.height- buttonRow.height
            anchors.top: parent.top
            clip: true



            ScrollBar.vertical: ScrollBar {
                id: myvertscroll
                anchors.right: listOfLists.right

            }


            model: DataAccess.ToDoItems


            delegate: RowLayout {
                width: parent.width

                CheckBox {
                    checked: model.done
                    onClicked: model.done = checked
                }
                TextField {
                    text: model.description
                    onEditingFinished: model.description = text
                    Layout.fillWidth: true
                }
            }

        }

        RowLayout {
            id: buttonRow
            height: 50
            width: parent.width
            anchors.bottom: parent.bottom

            RoundedButton {
                Layout.fillWidth: true
                Layout.fillHeight: true
                text: qsTr("Add new item")
                onClicked: addNewTodoToList();

            }
            RoundedButton {
                Layout.fillWidth: true
                Layout.fillHeight: true
                text: qsTr("Remove completed")
                onClicked: DataAccess.deleteDoneTodos();
            }
            Image {
                id: testSVG
                source: "qrc:/img/SVG/camera.svg"
                width: 50
                height: 50

            }
        }


    }

}
