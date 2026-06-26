#Requires AutoHotkey v2.0
A_IconTip := "MM Early Reset"

#Include "earlyReset.ahk"

releaseScript := A_Args[1]

~LButton:: {
    sendEarlyResetCommand(releaseScript)
}

F24:: {
    ExitApp
}
