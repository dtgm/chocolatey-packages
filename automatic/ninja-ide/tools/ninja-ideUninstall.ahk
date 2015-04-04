#NoEnv
SetTitleMatchMode, 1  ;matches if title begins with string
DetectHiddenText, off
DetectHiddenWindows, off
WinWait, Ninja ahk_class #32770, Are you sure you want to remove Ninja, 30
WinActivate
ControlClick, Button1, ahk_class #32770, &Yes,
WinWait, Ninja ahk_class #32770, OK, 30
WinActivate
ControlClick, Button1, ahk_class #32770, OK,
ExitApp