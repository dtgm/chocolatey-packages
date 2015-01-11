#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1   ;matches if title begins with string
DetectHiddenText, off  ;will not search hidden window text
DetectHiddenWindows, off  ;will not detect hidden windows
WinWait, Setup ahk_class #32770, This program will uninstall the software from your computer, 60
WinActivate
Send,{Enter}
WinWait, Setup ahk_class #32770, Uninstallation is finished, 60
WinActivate
Send,{Enter}
ExitApp