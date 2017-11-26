
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>


#include "QtQmlTricksPlugin_SmartDataModels.h"

#include "dataaccess.h"

int main (int argc, char * argv []) {
    QGuiApplication app (argc, argv);


    QQmlApplicationEngine engine;
    registerQtQmlTricksSmartDataModel (&engine);

    DataAccess _DataAccess;
    engine.rootContext ()->setContextProperty ("DataAccess", &_DataAccess);


    engine.load (QUrl ("qrc:/qml/main/ui.qml"));

    return app.exec ();
}
