#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2   ;matches if title begins with string
DetectHiddenText, off  ;will not search hidden window text
DetectHiddenWindows, off  ;will not detect hidden windows
SetControlDelay, 20
WinWait, GitHub Maintenance, Choose the type of maintenance you need, 120
WinActivate
ControlClick, &OK, GitHub Maintenance
ExitApp