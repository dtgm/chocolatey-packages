#NoEnv
SetTitleMatchMode, 1  ;begins

winTitle = FindThatFont ahk_class #32770

WinWait, %winTitle%, Are you sure you want to completely remove, 120
ControlClick, Button1, %winTitle%, &Yes,
WinWait, %winTitle%, OK, 120
ControlClick, Button1, %winTitle%

ExitApp