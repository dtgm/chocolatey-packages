; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 2

; variables
winTitle = monotone documentation: Top -  

WinWait, %winTitle%, , 180
ControlClick, 

ExitApp