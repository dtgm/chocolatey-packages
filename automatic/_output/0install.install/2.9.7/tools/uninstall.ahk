#NoEnv
SetTitleMatchMode, 1  ;begins
WinWait, Zero Install ahk_class #32770, Yes, 120
WinActivate
ControlClick, Button1, ahk_class #32770, Yes,
ExitApp