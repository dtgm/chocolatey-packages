; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 2

; variables
winTitle = Speex Uninstall ahk_class #32770

WinWait, %winTitle%, Are you sure, 180
WinActivate
ControlClick, Button1, , &Yes

WinWait, %winTitle%, , 180
WinActivate
ControlClick, Button1, , OK

ExitApp