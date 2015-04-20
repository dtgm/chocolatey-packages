#NoEnv
SetTitleMatchMode, 1  ;begins
DetectHiddenText, off
DetectHiddenWindows, off
CoordMode, Mouse, Relative

WinWait, Soluto Uninstaller, , 120
WinActivate
MouseMove, 150, 300
MouseMove,   0,  45, 30, R
Click

WinWait, Research.net Powered Online Survey, , 120
WinActivate
Send, ^w

ExitApp