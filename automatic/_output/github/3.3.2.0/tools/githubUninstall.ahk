; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1

winTitle = GitHub Maintenance

WinWait, %winTitle%, Choose the type of maintenance you need, 120
ControlGet, controlHwnd, Hwnd, , Remove the application, %winTitle%
ControlClick, , ahk_id %controlHwnd%
ControlClick, &OK, %winTitle%

ExitApp