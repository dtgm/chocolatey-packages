#NoEnv
SetTitleMatchMode, 1  ;matches if title begins with string
WinWait, SpeedFan ahk_class #32770, Do you want to remove any custom configuration, 30
WinActivate
ControlClick, Button1, ahk_class #32770, &Yes,
ExitApp