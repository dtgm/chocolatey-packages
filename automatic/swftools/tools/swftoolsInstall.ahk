#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1   ;matches if title begins with string
DetectHiddenText, off  ;will not search hidden window text
DetectHiddenWindows, off  ;will not detect hidden windows
WinWait, Setup ahk_class #32770, This Installer will install swftools, 60
WinActivate
Send,{Enter}
WinWait, Setup ahk_class #32770, Select installation directory, 60
WinActivate
Send,{Enter}
WinWait, Setup ahk_class #32770, begin the install process, 60
WinActivate
Send,{Enter}
WinWait, Setup ahk_class #32770, Installation is finished, 60
WinActivate
Send,{Enter}
ExitApp