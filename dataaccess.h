#ifndef DATAACCESS_H
#define DATAACCESS_H

#include <QObject>

//#include "QQmlVarPropertyHelpers.h"
//#include "QQmlConstRefPropertyHelpers.h"
//#include "QQmlAutoPropertyHelpers.h"

#include "QQmlHelpersCommon.h"
#include "QQmlObjectListModel.h"

#include "todoitem.h"
#include "theme/theme.h"

class DataAccess : public QObject
{
    Q_OBJECT
    QML_OBJMODEL_PROPERTY ( ToDoItem, ToDoItems)
//    QML_OBJMODEL_PROPERTY ( Theme   , CurrentTheme)
    QML_WRITABLE_VAR_PROPERTY   (Theme* , CurrentTheme)


public:
    explicit DataAccess(QObject *parent = nullptr);

    Q_INVOKABLE void addNewTodo(int index = -1);
    Q_INVOKABLE void deleteDoneTodos();

signals:

public slots:
};

#endif // DATAACCESS_H
