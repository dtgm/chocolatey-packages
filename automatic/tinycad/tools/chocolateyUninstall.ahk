; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1  ;begins

winTitle = TinyCAD ahk_class #32770

WinWait, %winTitle%, Are you sure you want to completely remove, 120
ControlClick, Button1, %winTitle%
WinWait, %winTitle%, OK, 120
ControlSend, , {Enter}, %winTitle%

ExitApp
