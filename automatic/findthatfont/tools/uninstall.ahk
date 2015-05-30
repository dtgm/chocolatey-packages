#NoEnv
SetTitleMatchMode, 1  ;matches if title begins with string
WinWait, FindThatFont ahk_class #32770, Are you sure you want to completely remove, 120
WinActivate
ControlClick, Button1, ahk_class #32770, &Yes,
WinWait, FindThatFont ahk_class #32770, OK, 120
WinActivate
ControlClick, Button1, ahk_class #32770
ExitApp