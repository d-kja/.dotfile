import Quickshell
import QtQuick

import Quickshell.Widgets

Item {
    property alias margin: manager_reference.margin
    property alias child: manager_reference.margin

    MarginWrapperManager {
        id: manager_reference

        margin: 6
    }
}
