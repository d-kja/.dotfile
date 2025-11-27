import Quickshell
import Quickshell.Io
import QtQuick

Scope {
  id: bar_root

  PanelWindow {
    color: 'transparent'

    anchors {
      left: true
      right: true

      top: true
    }

    implicitHeight: 30

    Clock {
      anchors.centerIn: parent
    }

    Wrapper {
      
    }
  }
}
