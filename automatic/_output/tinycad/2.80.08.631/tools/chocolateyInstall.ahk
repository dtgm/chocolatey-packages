; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1  ;begins

WinWait, TinyCAD ahk_class #32770, Libraries will be, 120
WinActivate
SendInput {Enter}

ExitApp
