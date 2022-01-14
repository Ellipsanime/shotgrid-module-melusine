import os
import sys

from PySide2.QtCore import QUrl, QCoreApplication
from PySide2.QtGui import QGuiApplication, Qt
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtQuick import QQuickView
from PySide2.QtQuickControls2 import QQuickStyle
from PySide2.QtWidgets import QApplication


def do_it() -> QQmlApplicationEngine:
    global engine
    QQuickStyle.setStyle("Material")
    engine = QQmlApplicationEngine()

    qml_file = os.path.join(
        os.path.dirname(__file__),
        "../view/leecher_settings.qml",
    )
    engine.load(QUrl.fromLocalFile(os.path.abspath(qml_file)))
    if not engine.rootObjects():
        sys.exit(-1)
    return engine


if __name__ == "__main__":
    QApplication.setAttribute(Qt.AA_EnableHighDpiScaling)
    QCoreApplication.setAttribute(Qt.AA_UseHighDpiPixmaps)
    app = QGuiApplication(["--style", "material"])
    do_it()
    sys.exit(app.exec_())
