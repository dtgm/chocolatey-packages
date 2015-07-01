#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1   ;matches if title begins with string
DetectHiddenText, off  ;will not search hidden window text
DetectHiddenWindows, off  ;will not detect hidden windows

WinWait, Uninstall ahk_class #32770, Do you want to remove, 120
WinActivate
Send,{Enter}

ExitApp