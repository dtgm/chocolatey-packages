#NoEnv
SetTitleMatchMode, 1  ;matches if title begins with string
WinWait, HandyAndy Says ahk_class #32770, This tool will completely remove traces of Andy, 30
WinActivate
ControlClick, Button1, ahk_class #32770, &Yes,
ExitApp