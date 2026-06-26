#Requires AutoHotkey v2.0

#Include "findEffectControls.ahk"
#Include "findUnassignedMasks.ahk"

tryCollapseUnassignedMasks(effectsControlsPos?) {
    if (IsSet(effectsControlsPos)) {
        return _clickCollapseUnassignedMasks("uncollapsedEffectsArrow.png", effectsControlsPos)
    } else {
        return _clickCollapseUnassignedMasks("uncollapsedEffectsArrow.png")
    }
}

tryUncollapseUnassignedMasks(effectsControlsPos?) {
    if (IsSet(effectsControlsPos)) {
        return _clickCollapseUnassignedMasks("collapsedEffectsArrow.png", effectsControlsPos)
    } else {
        return _clickCollapseUnassignedMasks("collapsedEffectsArrow.png")
    }
}

_clickCollapseUnassignedMasks(imageName, effectsControlsPos?) {

    if (IsSet(effectsControlsPos)) {
        unMaskPos := findUnassignedMasks(effectsControlsPos)
    } else {
        unMaskPos := findUnassignedMasks()
    }

    if (StrLen(unMaskPos[1]) > 0) {
        CoordMode "Pixel", "Screen"
        CoordMode "Mouse", "Screen"

        x1 := unMaskPos[1] - 30
        y1 := unMaskPos[2] - 10
        x2 := unMaskPos[1] + 10
        y2 := unMaskPos[2] + 20

        ImageSearch &resultX, &resultY, x1, y1, x2, y2,
            "*TransFF00FF *40 " . getImage(imageName)

        if (StrLen(resultX) > 0) {
            MouseClick "Left", resultX + 5, resultY + 5
            return 1
        }
    }
    return 0
}
