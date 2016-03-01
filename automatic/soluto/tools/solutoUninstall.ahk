#NoEnv
SetTitleMatchMode, 1  ;begins
DetectHiddenText, off
DetectHiddenWindows, off
CoordMode, Mouse, Relative

winTitle1 = Soluto Uninstaller
winTitle2 = Research.net Powered Online Survey

WinWait, %winTitle1%, , 120
WinActivate
MouseMove, 150, 300
MouseMove,   0,  45, 30, R
Click

WinWait, %winTitle2%, , 120
WinActivate
Send, ^w

ExitApp