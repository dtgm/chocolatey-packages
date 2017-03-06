; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1  ;begins

; variables
winTitle = git-annex Setup ahk_class #32770

WinWait, %winTitle%
ControlClick, OK, %winTitle%
ExitApp