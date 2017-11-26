#ifndef TODOITEM_H
#define TODOITEM_H

#include <QObject>

#include "QQmlVarPropertyHelpers.h"
#include "QQmlConstRefPropertyHelpers.h"
#include "QQmlAutoPropertyHelpers.h"

class ToDoItem : public QObject
{
    Q_OBJECT
    QML_WRITABLE_VAR_PROPERTY    (bool,    done)
    QML_WRITABLE_VAR_PROPERTY   (QString, description)

public:
    explicit ToDoItem(QObject *parent = nullptr) ;

signals:

public slots:
};

#endif // TODOITEM_H
