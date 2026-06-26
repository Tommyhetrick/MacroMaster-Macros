#Requires AutoHotkey v2.0

getImage(name) {
    SplitPath(A_LineFile, , &thisScriptDir)
    return thisScriptDir . '\..\images\' . name
}
