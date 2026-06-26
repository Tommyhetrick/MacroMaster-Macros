#Requires AutoHotkey v2.0

Send "^k" ; - Premiere - Add cut to track
Sleep 10
Send "{Left}" ; - Premiere move playhead one frame back
Sleep 10
Send "d" ; Premiere - Select clip at playhead
Sleep 10
Send "+{Delete}" ; Premiere - Ripple delete
