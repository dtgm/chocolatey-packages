; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, RegEx

WinWait, GitHub Maintenance, Choose the type of maintenance you need, 120
WinActivate
ControlClick, &OK, GitHub Maintenance

ExitApp