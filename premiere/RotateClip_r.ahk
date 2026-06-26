#Requires AutoHotkey v2.0

#Include "../_stateManager.ahk"
#Include "../earlyReset.ahk"
#Include "utils/collapseUnassignedMasks.ahk"

CoordMode "Mouse", "Screen"

xPos := ReadStateNum("MouseX")
yPos := ReadStateNum("MouseY")

MouseClick("left", 0, 0, , , "U", "R")

unMaskRes := ReadStateNum("collapsedUnmask")

if (unMaskRes) {
    Sleep 50
    tryUncollapseUnassignedMasks()
}

Sleep 50
MouseMove(xPos, yPos)

unattachEarlyReset()