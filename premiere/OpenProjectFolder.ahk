#Requires AutoHotkey v2.0

#Include "../openPathInExplorer.ahk"

gotTitle := WinGetTitle("A")

splitTitle := StrSplit(gotTitle, " - ")

SplitPath(splitTitle[2], , &projectDir)

openPathInExplorer(projectDir)