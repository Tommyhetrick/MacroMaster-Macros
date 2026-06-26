#Requires AutoHotkey v2.0

#Include "../../JSON.ahk"
#Include "../../utils/getUConId.ahk"

output := Map()

waitBetween := 100
; @TODO when I make a focus function, change these
Send "+1"
Sleep waitBetween
output.Set(getUConId(), 'project')
Send "+2"
Sleep waitBetween
output.Set(getUConId(), 'sourcemon')
Send "+3"
Sleep waitBetween
output.Set(getUConId(), 'timeline')
Send "+4"
Sleep waitBetween
output.Set(getUConId(), 'progmon')
Send "+5"
Sleep waitBetween
output.Set(getUConId(), 'effectcon')
; 6 is the audio mixer sooo
Send "+7"
Sleep waitBetween
output.Set(getUConId(), 'effects')

out := FileOpen("*", "w")

out.Write(JSON.stringify(output))

out.Read(0)