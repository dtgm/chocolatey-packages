; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1  ;begins

; variables
winTitle1 = AVG AntiVirus Free Edition
winTitle2 = AVG | Thank you for installing

WinWait, %winTitle1%, , 3600
WinMinimize, %winTitle1%

WinWait, %winTitle2%, , 300
WinActivate
Send, ^w

ExitApp