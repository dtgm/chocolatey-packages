; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1  ;begins

winTitle = TinyCAD ahk_class #32770

WinWait, %winTitle%, Libraries will be, 120
ControlSend, , {Enter}, %winTitle%

ExitApp
