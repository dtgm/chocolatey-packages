; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1  ;begins

WinWait, TinyCAD ahk_class #32770, Are you sure you want to completely remove, 120
WinActivate
ControlClick, Button1, TinyCAD ahk_class #32770

WinWait, TinyCAD ahk_class #32770, OK, 120
WinActivate
SendInput {Enter}

ExitApp
