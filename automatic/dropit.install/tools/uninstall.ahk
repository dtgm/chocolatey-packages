#NoEnv
SetTitleMatchMode, 1  ;begins

winTitle = Remove settings ahk_class #32770

WinWait, %winTitle%, Do you want to remove, 30
ControlClick, Button1, %winTitle%, &Yes

ExitApp