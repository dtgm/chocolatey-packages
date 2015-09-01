#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1   ;matches if title begins with string
DetectHiddenText, off  ;will not search hidden window text
DetectHiddenWindows, off  ;will not detect hidden windows
WinWait, CDex Setup ahk_class #32770, Thank You for using CDex, 120
WinActivate
ControlClick, Button1, ahk_class #32770
WinWait, Donations ahk_class IEFrame, Navigation Bar, 60
WinActivate
Send ^w
ExitApp