#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1   ;begins
DetectHiddenText, off  ;will not search hidden window text
DetectHiddenWindows, off  ;will not detect hidden windows

winTitle = JStock Uninstall ahk_class #32770

WinWait, %winTitle%, &Yes, 120
ControlClick, Button1, %winTitle%

ExitApp