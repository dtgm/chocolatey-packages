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
ControlClick, Button1, %winTitle%, &Yes
WinWait, %winTitle%, , 180
ControlClick, Button1, %winTitle%, OK

ExitApp