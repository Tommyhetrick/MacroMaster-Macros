#Requires AutoHotkey v2.0

#Include "utils/findEffectControls.ahk"
#Include "utils/collapseUnassignedMasks.ahk"

CoordMode "Mouse", "Screen"

MouseGetPos &xpos, &ypos

effectsPos := findEffectControls()

collapseUnmaskRes := tryCollapseUnassignedMasks(effectsPos)

scalePos := relEffectControls(170, 155, effectsPos)

Sleep 50
Click scalePos[1], scalePos[2]

$Enter:: {
    Send "{Enter}"
    Sleep 50
    if (collapseUnmaskRes) {
        tryUncollapseUnassignedMasks()
    }
    MouseMove xpos, ypos
    ExitApp
    return
}
