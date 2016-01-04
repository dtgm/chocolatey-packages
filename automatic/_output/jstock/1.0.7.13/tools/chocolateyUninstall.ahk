#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1   ;matches if title begins with string
DetectHiddenText, off  ;will not search hidden window text
DetectHiddenWindows, off  ;will not detect hidden windows
WinWait, JStock Uninstall ahk_class #32770, &Yes, 120
WinActivate
ControlClick, Button1, ahk_class #32770
ExitApp