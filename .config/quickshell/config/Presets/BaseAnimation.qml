import QtQuick

import ".."

NumberAnimation {
  duration: Config.animation.presets.base.duration
  easing.type: Config.animation.presets.base.type
  easing.bezierCurve: Config.animation.presets.base.bezierCurve
}
