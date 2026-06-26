#Requires AutoHotkey v2.0

#Include "../_stateManager.ahk"
#Include "utils/collapseUnassignedMasks.ahk"
#Include "../earlyReset.ahk"

CoordMode "Mouse", "Screen"

attachEarlyReset("lButton")

MouseGetPos &xpos, &ypos

SaveState("MouseX", xpos)
SaveState("MouseY", ypos)

effectsPos := findEffectControls()

collapseUnmaskRes := tryCollapseUnassignedMasks(effectsPos)

scalePos := relEffectControls(161, 152, effectsPos)

SaveState('collapsedUnmask', collapseUnmaskRes)

Sleep 50
Click scalePos[1], scalePos[2], 1, "D"