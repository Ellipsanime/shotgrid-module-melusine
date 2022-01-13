import os
import sys

from PySide2.QtCore import QUrl
from PySide2.QtQuick import QQuickView
from PySide2.QtWidgets import QApplication, QDialog, QLineEdit, QPushButton


def do_it() -> None:
    global view
    view = QQuickView()
    view.setResizeMode(QQuickView.SizeRootObjectToView)

    qml_file = os.path.join(os.path.dirname(__file__),
                            "../view/leecher_settings.qml")
    view.setSource(QUrl.fromLocalFile(os.path.abspath(qml_file)))
    view.setWidth(520)
    view.setHeight(500)
    if view.status() == QQuickView.Error:
        sys.exit(-1)
    view.show()


if __name__ == "__main__":
    app = QApplication([])
    do_it()
    app.exec_()
