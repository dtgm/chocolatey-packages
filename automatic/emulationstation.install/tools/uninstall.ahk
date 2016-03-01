#NoEnv
SetTitleMatchMode, 1  ;begins

%winTitle% = EmulationStation Uninstall ahk_class #32770

WinWait, %winTitle%, Do you want to, 120
ControlClick, Button1, %winTitle%, &Yes,

ExitApp