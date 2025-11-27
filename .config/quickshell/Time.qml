pragma Singleton

import Quickshell
import QtQuick

Singleton {
  id: clock_root

  property string time: {
    Qt.formatDateTime(clock_reference.date, "ddd dd/MM  -  hh:mm  AP")
  }

  SystemClock {
    id: clock_reference
    precision: SystemClock.Minutes
  }

  // Timer {
  //   interval: 1000
  //
  //   running: true
  //   repeat: true
  //
  //   onTriggered: clock_root.text = new Date()
  // }

  // Process {
  //   id: date_process
  //
  //   command: ['date']
  //   running: true
  //
  //   stdout: StdioCollector {
  //     onStreamFinished: root.time = this.text
  //   }
  // }
}
