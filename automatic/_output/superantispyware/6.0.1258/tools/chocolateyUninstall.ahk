; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
;#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1 ;begins

; variables
winTitle1 = SUPERAntiSpyware Uninstaller ahk_class #32770
winTitle2 = SUPERAntiSpyware Uninstall ahk_class #32770
winTitle3 = SUPERAntiSpyware.com - Uninstallation Survey

WinWait, %winTitle1%, This will remove SUPERAntiSpyware from your system, 120
ControlClick, Button1, %winTitle1%, OK

WinWait, %winTitle2%, , 120
ControlClick, Button1, %winTitle2%, &Yes

WinWait, %winTitle3%, , 120
WinActivate
Send, ^w

ExitApp