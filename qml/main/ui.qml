import QtQuick 2.0;
import QtQuick.Window 2.0;
import QtQmlTricks.SmartDataModels 2.0
import QtQuick.Layouts 1.3

import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2

ApplicationWindow {
    id: win;
    title: "Mr Cab Driver ";
    width: 800;
    height: 480;
    visible: true;

    Material.theme: themeSwitch.checked ? Material.Light : Material.Dark

    ToDoList
    {
       anchors.fill: parent
    }

    footer :Switch {
        id: themeSwitch
        text: themeSwitch.checked ? "Light" : "Dark"
    }
}
