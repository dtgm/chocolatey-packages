#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1   ;matches if title begins with string
DetectHiddenText, off  ;will not search hidden window text
DetectHiddenWindows, off  ;will not detect hidden windows

winTitle = VeraCrypt ahk_class #32770
winTitleCustomDlg = VeraCrypt ahk_class CustomDlg

WinWait, %winTitleCustomDlg%, Please read the license terms, 120
ControlSend, ,a{Enter}, %winTitleCustomDlg%
WinWait, %winTitleCustomDlg%, Wizard Mode, 120
ControlSend, , {Enter}, %winTitle%
WinWait, %winTitleCustomDlg%, Setup Options, 120
ControlSend, , {Enter}, %winTitle%
WinWait, %winTitle%, OK, 120
ControlSend, , {Enter}, %winTitle%
WinWait, %winTitleCustomDlg%, Please consider, 120
ControlSend, , {Enter}, %winTitle%

ExitApp