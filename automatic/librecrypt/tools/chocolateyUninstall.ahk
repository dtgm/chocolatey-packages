; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1  ;begins

; variables
winTitle = Information ahk_class #32770

WinWait, %winTitle%, OK, 180
ControlClick, Button1, %winTitle%, OK

ExitApp