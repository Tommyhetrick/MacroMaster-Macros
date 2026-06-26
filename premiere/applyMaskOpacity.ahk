#Requires AutoHotkey v2.0

#Include "findEffectControls.ahk"

CoordMode "Mouse", "Screen"

MouseGetPos &xpos, &ypos

startPos := relEffectControls(90, 115)
endPos := relEffectControls(90, 550)

MouseClick "Right", startPos[1], startPos[2]
Sleep 20
MouseClick "Left", 10, 10, , , , "R"
Sleep 50
MouseMove xpos, ypos