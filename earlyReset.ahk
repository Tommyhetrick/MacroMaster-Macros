#Requires AutoHotkey v2.0

sendEarlyResetCommand(releaseScript) {
    SetTitleMatchMode 2
    DetectHiddenWindows true
    if updateProgProc := WinExist("updateProg.ahk - AutoHotkey v") {
        SendMessage(0x5555, 1, 0, , updateProgProc)
    }
    Run releaseScript
    Send "{F24}"
}

attachEarlyReset(lType) {

    scriptLoc := RegExReplace(A_LineFile, "\\[^\\]+$")

    releaseScript := RegExReplace(A_ScriptName, "_h", "_r")

    if (lType == "lButton") {
        Run scriptLoc . "/earlyReset_lButton.ahk " . A_ScriptDir . "\" . releaseScript
    } else {
        MsgBox "Invalid attach early reset type"
    }
}

unattachEarlyReset() {
    Send "{F24}"
}
