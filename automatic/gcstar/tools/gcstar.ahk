#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1   ;begins
DetectHiddenText, off  ;will not search hidden window text
DetectHiddenWindows, off  ;will not detect hidden windows

winTitle = GCstar ahk_class #32770

WinWait, %winTitle%, Are you sure, 120
ControlClick, Button1, ahk_class #32770
WinWait, %winTitle%, Do you want, 60
ControlClick, Button1, ahk_class #32770
WinWait, %winTitle%, OK, 60
ControlClick, Button1, ahk_class #32770

ExitApp