#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1   ;matches if title begins with string
DetectHiddenText, off  ;will not search hidden window text
DetectHiddenWindows, off  ;will not detect hidden windows
WinWait, GCstar ahk_class #32770, Are you sure, 120
WinActivate
ControlClick, Button1, ahk_class #32770
WinWait, GCstar ahk_class #32770, Do you want, 60
WinActivate
ControlClick, Button1, ahk_class #32770
WinWait, GCstar ahk_class #32770, OK, 60
WinActivate
ControlClick, Button1, ahk_class #32770
ExitApp