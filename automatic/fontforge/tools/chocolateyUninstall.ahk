#NoEnv
#NoTrayIcon
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1   ;match if begins
DetectHiddenText, off
DetectHiddenWindows, off

WinWait, Uninstall ahk_class #32770, Do you want to remove, 120
WinActivate
Send,{Enter}

ExitApp