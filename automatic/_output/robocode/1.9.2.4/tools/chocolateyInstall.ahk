; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1  ;begins

WinWait, Installing Robocode ahk_class SunAwtDialog, , 120
WinActivate
SendInput {Enter}

WinWait, Create Shortcuts ahk_class SunAwtDialog, , 120
WinActivate
SendInput {Enter}

WinWait, Message ahk_class SunAwtDialog, , 120
WinActivate
SendInput {Enter}

WinWait, Create File Associations ahk_class SunAwtDialog, , 120
WinActivate
SendInput {Enter}

WinWait, Registry Editor ahk_class #32770, , 120
WinActivate
ControlClick, Button1, Registry Editor ahk_class #32770

WinWait, Registry Editor ahk_class #32770, , 120
WinActivate
ControlClick, Button1, Registry Editor ahk_class #32770

WinWait, Message ahk_class SunAwtDialog, , 120
WinActivate
SendInput {Enter}

ExitApp
