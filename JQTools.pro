TEMPLATE = app

QT += qml quick widgets concurrent

CONFIG += c++11
CONFIG += c++14

include($$PWD/Library/JQLibrary/JQLibrary.pri)
include($$PWD/Library/MaterialUI/MaterialUI.pri)
include($$PWD/Library/JQToolsLibrary/JQToolsLibrary.pri)
include($$PWD/Groups/Groups.pri)

HEADERS += \
    $$PWD/cpp/JQToolsManage.hpp

SOURCES += \
    $$PWD/cpp/main.cpp

RESOURCES += \
    $$PWD/qml/qml.qrc

# Default rules for deployment.
include(deployment.pri)

macx{
    ICON = $$PWD/Resources/Icon/Icon.icns
}

win32{
    RC_FILE = $$PWD/Resources/Icon/Icon.rc
}
