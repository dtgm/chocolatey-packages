#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1   ;matches if title begins with string
DetectHiddenText, off  ;will not search hidden window text
DetectHiddenWindows, off  ;will not detect hidden windows
SetControlDelay, 0
WinWait, Installing Adobe Shockwave Player ahk_class #32770, Optional offers, 120
WinActivate
ControlClick, Button1, ahk_class #32770, ,
ControlClick, Button2, ahk_class #32770, ,
ControlClick, Button4, ahk_class #32770, Next >, 
ExitApp