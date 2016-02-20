#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1   ;begins
DetectHiddenText, off
DetectHiddenWindows, off

WinWait, CDex Setup ahk_class #32770, Thank You for using CDex, 120
WinActivate
ControlClick, Button1, ahk_class #32770

WinWait, Donations | CDex, , 10
WinActivate
Send ^w

ExitApp