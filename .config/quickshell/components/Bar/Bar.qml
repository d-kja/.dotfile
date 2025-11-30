import Quickshell
import QtQuick

import "../../utils"
import "../../config"

import "../Volume"

PanelWindow {
  id: root

  required property var modelData
  screen: modelData

  anchors {
    top: true
    left: true
    right: true
  }

  // TODO: Finish bar
  implicitHeight: 0 // 40
  color: "transparent" //Config.colors.background.primary

  Volume {}
}
