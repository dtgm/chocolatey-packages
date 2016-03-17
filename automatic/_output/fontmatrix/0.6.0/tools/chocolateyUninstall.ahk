; default environment
DetectHiddenWindows, off
SetKeyDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, Regex

; variables
winTitleOk = FontMatrix .* Uninstall

WinWait, %winTitleOk%, OK, 30
ControlClick, OK, %winTitleOk%

ExitApp