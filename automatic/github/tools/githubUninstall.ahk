; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, RegEx

winTitle = GitHub Maintenance

WinWait, %winTitle%, Choose the type of maintenance you need, 120
ControlClick, &OK, %winTitle%

ExitApp