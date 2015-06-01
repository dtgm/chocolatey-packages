; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1  ;begins

; variables
winTitle = AVG | Thank you for installing
app = AVG AntiVirus Free Edition

WinWait, %app%, , 3600
WinMinimize, %app%

WinWait, %winTitle%, , 3600
WinActivate
Send, ^w

ExitApp