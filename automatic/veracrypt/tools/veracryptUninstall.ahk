#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1   ;matches if title begins with string
DetectHiddenText, off  ;will not search hidden window text
DetectHiddenWindows, off  ;will not detect hidden windows
WinWait, VeraCrypt ahk_class CustomDlg, Please read the license terms, 120
WinActivate
Send,a{Enter}
WinWait, VeraCrypt ahk_class CustomDlg, Wizard Mode, 120
WinActivate
Send,{Enter}
WinWait, VeraCrypt ahk_class CustomDlg, Setup Options, 120
WinActivate
Send,{Enter}
WinWait, VeraCrypt ahk_class #32770, OK, 120
WinActivate
Send,{Enter}
WinWait, VeraCrypt ahk_class CustomDlg, Please consider, 120
WinActivate
Send,{Enter}
ExitApp