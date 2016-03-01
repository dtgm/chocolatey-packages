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
winTextException = System.NullReferenceException: Object reference not set to an instance of an object

WinWait, %winTitleException%, %winTextException%, 20
ControlClick, OK, %winTitleException%, %winTextException%