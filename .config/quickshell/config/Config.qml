pragma Singleton

import Quickshell
import QtQuick

import "Colors.qml"
import "Spacing.qml"
import "Animations.qml"

Singleton {
  id: configuration_root

  readonly property Animations animation: Animations {}
  readonly property Spacing spacing: Spacing {}
  readonly property Colors colors: Colors {}
}

/*
 * TODO:
 * - [] Font family
 * - [] Font size
 **/
