#NoEnv
SetTitleMatchMode, 1  ;matches if title begins with string
WinWait, Remove settings ahk_class #32770, Do you want to remove, 30
WinActivate
ControlClick, Button1, ahk_class #32770, &Yes,
ExitApp