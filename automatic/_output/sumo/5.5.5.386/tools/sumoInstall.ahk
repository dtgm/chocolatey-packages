#NoEnv
SetTitleMatchMode, 1  ;begins
DetectHiddenText, off
DetectHiddenWindows, off

winTitle = KC Softwares

WinWait, %winTitle%, Navigation Bar, 30
WinActivate
Send, ^w

ExitApp