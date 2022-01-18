import os
import sys

from PySide2 import QtWebEngine
from PySide2.QtCore import QUrl, QCoreApplication
from PySide2.QtGui import QGuiApplication, Qt
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtQuick import QQuickView
from PySide2.QtQuickControls2 import QQuickStyle
from PySide2.QtWidgets import QApplication

_STYLE = "Material"


def do_it() -> QQmlApplicationEngine:

    if QQuickStyle.name() != _STYLE:
        QQuickStyle.setStyle(_STYLE)

    global engine
    engine = QQmlApplicationEngine()

    qml_file = os.path.join(
        os.path.dirname(__file__),
        "../view/leecher_settings.qml",
        # "../view/webview.qml",
    )
    engine.load(QUrl.fromLocalFile(os.path.abspath(qml_file)))
    if not engine.rootObjects():
        sys.exit(-1)
    return engine


if __name__ == "__main__":
    QtWebEngine.QtWebEngine.initialize()
    QApplication.setAttribute(Qt.AA_EnableHighDpiScaling)
    QCoreApplication.setAttribute(Qt.AA_UseHighDpiPixmaps)
    app = QGuiApplication([])
    QtWebEngine.QtWebEngine.initialize()
    do_it()
    sys.exit(app.exec_())
