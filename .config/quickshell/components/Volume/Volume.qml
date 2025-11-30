pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.Pipewire
import Quickshell.Widgets

import "../../config"
import "../Shards"

Scope {
  id: root

  property bool show: false
  property int size: 44

  PwObjectTracker {
    objects: [Pipewire.defaultAudioSink]
  }

  Connections {
    target: Pipewire.defaultAudioSink?.audio 

    // Volume change signal
    function onVolumeChanged() {
      root.show = true;
      autohide_timer.restart();
    }
  }

  Timer {
    id: autohide_timer

    interval: 1000 * 1.5 // 1.5s
    onTriggered: root.show = false // Hide element
  }

  LazyLoader {
    active: root.show

    PanelWindow {
      id: panel

      // WARN: Prevent the window from blocking mouse events
      mask: Region {}

      margins.top: screen.height / 5
      anchors {
        right: true
        top: true
      }

      color: "transparent"

      implicitHeight: child.implicitHeight + root.size * 2
      implicitWidth: child.implicitWidth

      Rectangle {
        id: child

        color: Config.colors.background.primary

        implicitHeight: 440
        implicitWidth: 54

        y: root.size

        topLeftRadius: Config.spacing.rounding.xl * 4
        bottomLeftRadius: Config.spacing.rounding.xl * 4

        ColumnLayout {
          anchors {
            fill: parent

            topMargin: Config.spacing.margin.xl * 2
            bottomMargin: Config.spacing.margin.xl * 2

            leftMargin: child.implicitWidth / 2 - volume_slider.implicitWidth / 2
          }

          Text {
            Layout.alignment: Qt.AlignLeft

            color: Config.colors.text.primary
            font {
              pointSize: Config.spacing.font.sm
              bold: true
            }

            text: {
              const volume = (Pipewire.defaultAudioSink?.audio?.volume ?? 0) * 100;
              return `${volume.toFixed(0)}`;
            }
          }

          Rectangle {
            id: volume_slider

            Layout.fillHeight: true
            implicitWidth: child.implicitWidth / 6

            radius: Config.spacing.rounding.xl
            color: "transparent"

            property real gap: Config.spacing.gap.lg

            Rectangle {
              anchors {
                bottom: parent.bottom
                left: parent.left
                right: parent.right
              }

              color: Config.colors.background.secondary
              radius: volume_slider.radius

              implicitHeight: volume_slider.height - volume_slider.gap

              Rectangle {
                anchors {
                  bottom: parent.bottom
                  left: parent.left
                  right: parent.right
                }

                color: Config.colors.background.secondary_foreground
                radius: volume_slider.radius

                implicitHeight: {
                  const volume = (Pipewire.defaultAudioSink?.audio?.volume ?? 0);

                  const volumeLimit = 1;

                  if (volume >= volumeLimit) {
                    return parent.height;
                  }

                  return parent.height * volume;
                }
              }
            }
          }
        }
      }

      /*
     * INFO: Inverted corners
     **/
      RoundedCorner {
        id: top_corner
        corner: RoundedCorner.CornerEnum.BOTTOM_RIGHT
        size: root.size

        x: panel.implicitWidth - size
        y: 0
      }

      RoundedCorner {
        id: bottom_corner

        corner: RoundedCorner.CornerEnum.TOP_RIGHT
        size: root.size

        x: panel.implicitWidth - size
        y: panel.implicitHeight - size
      }
    }
  }
}
