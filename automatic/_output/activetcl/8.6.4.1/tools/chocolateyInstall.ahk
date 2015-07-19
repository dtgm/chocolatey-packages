; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1  ;begins

; variables
winTitle = ActiveState ActiveTcl ahk_class TkTopLevel

WinWait, %winTitle%
WinMinimize, %winTitle%

WinWaitActive, %winTitle%
ControlSend, TkChild9, {Tab}{Enter}, %winTitle%

ExitApp