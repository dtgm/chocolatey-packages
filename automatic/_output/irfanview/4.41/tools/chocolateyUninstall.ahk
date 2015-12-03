; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 2

; variables
winTitle = IrfanView Uninstall ahk_class #32770

WinWait, %winTitle%, Thank you for using, 180
WinActivate
ControlClick, Button1, , &Yes

WinWait, %winTitle%, IrfanView uninstalled, 180
WinActivate
ControlClick, Button1, , OK

ExitApp
