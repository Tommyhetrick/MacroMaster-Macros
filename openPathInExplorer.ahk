#Requires AutoHotkey v2.0

openPathInExplorer(projectDir) {

    windowFound := false

    for win in ComObject("Shell.Application").Windows {
        try {
            currentPath := win.Document.Folder.Self.Path
            if (currentPath = projectDir) {
                WinActivate("ahk_id " . win.HWND)
                windowFound := true
                break
            }
        }
    }

    if (!windowFound) {
        Run(projectDir)
    }
}
