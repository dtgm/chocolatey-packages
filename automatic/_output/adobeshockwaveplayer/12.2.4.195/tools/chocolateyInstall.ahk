#NoEnv
SetTitleMatchMode, 1  ;begins
DetectHiddenText, off
DetectHiddenWindows, off

winTitle = Installing Adobe Shockwave Player ahk_class #32770

WinWait, %winTitle%, , 120
ControlClick, Button1, %winTitle%, ,
ControlClick, Button3, %winTitle%, Next >,

ExitApp