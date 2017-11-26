import qbs;

Project {
    name: "Qt / QML Project";
    references: [
        "libQtQmlTricks/SuperMacros/QtSuperMacros.qbs",
        "libQtQmlTricks/UiElements/QtQuickUiElements.qbs",
        "libQtQmlTricks/SmartDataModels/QtQmlModels.qbs",
    ]

    Product {
        name: "app-unamed";
        type: "application";
        targetName: "AppUnamed";
        cpp.cxxLanguageVersion: (Qt.core.versionMajor >= 5 && Qt.core.versionMinor >= 7 ? "c++11" : "c++98");
        cpp.cxxStandardLibrary: "libstdc++"; // NOTE : because there are issues with libc++

        Depends {
            name: "cpp";
        }
        Depends {
            name: "Qt";
            submodules: ["core", "gui", "qml", "quick"];
        }
        Depends {
            name: "libqtqmltricks-qtqmlmodels";
        }
        Depends {
            name: "libqtqmltricks-qtsupermacros";
        }
        Depends {
            name: "libqtqmltricks-qtquickuielements";
        }
        Group {
            name: "C++";
            files: [
                "main.cpp",
            ]
        }
        Group {
            name: "QML";
            files: [
                "ui.qml",
            ]
        }
        Group {
            name: "QRC";
            files: [
                "data.qrc",
            ]
        }
        Group {
            qbs.install: true;
            fileTagsFilter: product.type;
        }
    }
}
