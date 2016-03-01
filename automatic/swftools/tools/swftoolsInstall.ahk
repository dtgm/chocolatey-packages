#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1   ;begins
DetectHiddenText, off  ;will not search hidden window text
DetectHiddenWindows, off  ;will not detect hidden windows

winTitle = Setup ahk_class #32770

WinWait, %winTitle%, This Installer will install swftools, 60
ControlSend, , {Enter}, %winTitle%
WinWait, %winTitle%, Select installation directory, 60
ControlSend, , {Enter}, %winTitle%
WinWait, %winTitle%, begin the install process, 60
ControlSend, , {Enter}, %winTitle%
WinWait, %winTitle%, Installation is finished, 60
ControlSend, , {Enter}, %winTitle%

ExitApp