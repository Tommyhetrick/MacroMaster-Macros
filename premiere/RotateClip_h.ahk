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

rotPos := relEffectControls(160, 220, effectsPos)

SaveState('collapsedUnmask', collapseUnmaskRes)

Sleep 50
Click rotPos[1], rotPos[2], 1, "D"