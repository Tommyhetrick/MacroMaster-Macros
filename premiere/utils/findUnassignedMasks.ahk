#Requires AutoHotkey v2.0

#Include "findEffectControls.ahk"
#Include "getImage.ahk"

findUnassignedMasks(effectsControlsPos?) {

    effectsPos := [0, 0]

    if (IsSet(effectsControlsPos)) {
        effectsPos := effectsControlsPos
    } else {
        effectsPos := findEffectControls()
    }

    return [effectsPos[1] + 35, effectsPos[2] + 90]
}
