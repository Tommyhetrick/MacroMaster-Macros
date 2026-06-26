#Requires AutoHotkey v2.0

Send "^!+k" ; Premiere - Move playhead to cursor
Sleep 10
Send "d" ; Premiere - Select clip at playhead
Sleep 10
Send "+{Delete}" ; Premiere - Ripple Delete at playhead
