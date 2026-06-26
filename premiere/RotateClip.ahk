#Requires AutoHotkey v2.0

#Include "utils/findEffectControls.ahk"
#Include "utils/collapseUnassignedMasks.ahk"

CoordMode "Mouse", "Screen"

MouseGetPos &xpos, &ypos

effectsPos := findEffectControls()

collapseUnmaskRes := tryCollapseUnassignedMasks(effectsPos)

rotPos := relEffectControls(160, 220, effectsPos)

Sleep 50
Click rotPos[1], rotPos[2]

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
