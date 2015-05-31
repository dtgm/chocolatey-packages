; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
;#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1 ;begins

; variables
winTitle = SUPERAntiSpyware Uninstaller ahk_class #32770
winTitle2 = SUPERAntiSpyware Uninstall ahk_class #32770

WinWait, %winTitle%, This will remove SUPERAntiSpyware from your system, 120
ControlClick, Button1, %winTitle%, OK

WinWait, %winTitle2%, , 120
ControlClick, Button1, %winTitle2%, &Yes

WinWait, SUPERAntiSpyware.com - Uninstallation Survey, , 120
WinActivate
Send, ^w

ExitApp