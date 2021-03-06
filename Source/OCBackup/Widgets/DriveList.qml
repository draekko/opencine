// Copyright (c) 2017 apertus° Association & contributors
// Project: OpenCine / OCBackup
// License: GNU GPL Version 3 (https://www.gnu.org/licenses/gpl-3.0.en.html)

import QtQuick 2.4
import QtGraphicalEffects 1.0

import "OCWidgets"

Rectangle
{
    id: driveList
    width: 276
    height: 300
    color: "#191919"

    border.width: 1
    border.color: "#555555"

    signal itemSelectionChanged(int currentItem)

    Component
    {
        id: listDelegate

        DriveItem
        {
            height: 36
            width: parent.width

            MouseArea
            {
                id: itemMouseArea
                anchors.fill: parent

                onClicked:
                {
                    listView.currentIndex = index
                    driveList.itemSelectionChanged(index)
                }
            }
        }
    }

    OCListView
    {
        id: listView

        model: listModel
        delegate: listDelegate
    }
}
