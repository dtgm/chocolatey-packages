#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1   ;begins
DetectHiddenText, off  ;will not search hidden window text
DetectHiddenWindows, off  ;will not detect hidden windows

winTitle = Setup ahk_class #32770

WinWait, %winTitle%, This program will uninstall the software from your computer, 60
ControlSend, , {Enter}, %winTitle%
WinWait, %winTitle%, Uninstallation is finished, 60
ControlSend, , {Enter}, %winTitle%

ExitApp