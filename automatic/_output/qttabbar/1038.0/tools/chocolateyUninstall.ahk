; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 2

; variables
winTitleException = ahk_class #32770 ahk_exe QTTabBar.exe
winTextException = System.IO.DirectoryNotFoundException: Could not find a part of the path

WinWait, %winTitleException%, , 10
WinActivate
ControlClick, OK, %winTitleException%, %winTextException%