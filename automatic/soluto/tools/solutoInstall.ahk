#NoEnv
SetTitleMatchMode, 2  ;contains
DetectHiddenText, off
DetectHiddenWindows, off

winTitle = Soluto - A new way to do IT

WinWait, %winTitle%, , 120
WinActivate
Send, ^w

ExitApp