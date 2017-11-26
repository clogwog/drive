#ifndef THEME_H
#define THEME_H

#include <QObject>

#include "QQmlVarPropertyHelpers.h"
#include "QQmlConstRefPropertyHelpers.h"
#include "QQmlAutoPropertyHelpers.h"


class Theme : public QObject
{
    Q_OBJECT
    QML_READONLY_AUTO_PROPERTY   (int , rounded_button_radius)

public:
    explicit Theme(QObject *parent = nullptr);


signals:

public slots:
};

#endif // THEME_H
