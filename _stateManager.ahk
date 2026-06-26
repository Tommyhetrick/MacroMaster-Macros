#Requires AutoHotkey v2.0

; MacroState.ahk (AHK v2)
; A_LineFile points to the location of this script
global StateFile := A_ScriptDir . "\..\_state.ini"

GetMacroName() {
    SplitPath(A_ScriptName, , , , &OutNameNoExt)
    return RegExReplace(OutNameNoExt, "_.*", "")
}

SaveState(Key, Value) {
    Section := GetMacroName()
    ; AHK v2: No % signs around variables in function calls
    IniWrite(Value, StateFile, Section, Key)
}

ReadState(Key) {
    Section := GetMacroName()
    ; IniRead returns the value directly in v2
    return IniRead(StateFile, Section, Key, "ERROR")
}

ReadStateNum(Key) {
    return Number(ReadState(Key))
}
