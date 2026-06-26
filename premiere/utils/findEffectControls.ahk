#Requires AutoHotkey v2.0

#Include "./getImage.ahk"

findEffectControls() {
    CoordMode "Pixel", "Screen"
    ImageSearch &imgX, &imgY, -1920, -260, 0, 770, getImage("effect_controls.png")
    return [imgX, imgY]
}

relEffectControls(x, y, origin?) {
    source := [0, 0]

    if (IsSet(origin)) {
        source := origin
    } else {
        source := findEffectControls()
    }

    return [source[1] + x, source[2] + y]
}
