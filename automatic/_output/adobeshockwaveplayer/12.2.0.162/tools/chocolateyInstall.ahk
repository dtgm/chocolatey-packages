#NoEnv
SetTitleMatchMode, 1  ;begins
DetectHiddenText, off
DetectHiddenWindows, off

WinWait, Installing Adobe Shockwave Player ahk_class #32770, , 120
WinActivate
ControlClick, Button1, ahk_class #32770, ,
ControlClick, Button3, ahk_class #32770, Next >,

ExitApp