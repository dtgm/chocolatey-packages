#NoEnv
SetTitleMatchMode, 1  ;begins

winTitle = Zero Install ahk_class #32770
winText = Yes

WinWait, %winTitle%, %winText%, 120
ControlClick, Button1, %winTitle%, %winText%

ExitApp