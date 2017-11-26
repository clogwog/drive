
TARGET = MrCabDriver

QT += qml quick svg quickcontrols2

TEMPLATE = app

SOURCES += main.cpp \
    todoitem.cpp \
    dataaccess.cpp \
    theme/theme.cpp

HEADERS += \
    todoitem.h \
    dataaccess.h \
    theme/theme.h

RESOURCES += data.qrc

OBJECTS_DIR  = _obj
MOC_DIR      = _moc
RCC_DIR      = _rcc

DEFINES += QT_USE_QSTRINGBUILDER
DEFINES += QT_USE_FAST_CONCATENATION
DEFINES += QT_USE_FAST_OPERATOR_PLUS

include ($$PWD/libQtQmlTricks/SuperMacros/QtSuperMacros.pri)
include ($$PWD/libQtQmlTricks/SmartDataModels/QtQmlModels.pri)


DISTFILES +=
