#NoEnv
SetTitleMatchMode, 1  ;begins
WinWait, EmulationStation Uninstall ahk_class #32770, Do you want to, 120
WinActivate
ControlClick, Button1, ahk_class #32770, &Yes,
ExitApp