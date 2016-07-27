#NoEnv
#NoTrayIcon
SendMode Input
DetectHiddenText, off
DetectHiddenWindows, off
SetTitleMatchMode, 1   ;begins

winTitle = Windows Security ahk_class #32770

WinWait, %winTitle%, , 300
ControlClick, Button1, %winTitle%
ControlClick, Button1, %winTitle%

ExitApp