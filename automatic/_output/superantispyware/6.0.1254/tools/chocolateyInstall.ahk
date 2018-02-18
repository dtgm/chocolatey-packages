; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1  ;begins

; variables
winTitleFree = SUPERAntiSpyware Free Edition Setup ahk_class #32770
winTitlePro = SUPERAntiSpyware Professional Trial ahk_class #32770
app = SUPERAntiSpyware Free Edition ahk_class CMultiDialog_WndClass

WinWait, %winTitleFree%, It is strongly recommended that you exit, 600
ControlClick, Button7, %winTitleFree%, &Next >

WinWait, %winTitleFree%, Support.com, 120
ControlClick, Button7, %winTitleFree%, &I Agree

WinWait, %winTitleFree%, The settings for this application, 120
ControlClick, Button7, %winTitleFree%, &Next >

WinWait, %winTitleFree%, Setup will install the files, 120
ControlClick, Button7, %winTitleFree%, &Next >

Sleep 500
IfWinExist, Folder Already Exists ahk_class #32770, &Yes
ControlClick, Button1, Folder Already Exists ahk_class #32770, &Yes

WinWait, %winTitleFree%, The following options will be used, 120
ControlClick, Button1, %winTitleFree%, Check for recent definition database updates
ControlClick, Button2, %winTitleFree%, Submit a system diagnostic
ControlClick, Button7, %winTitleFree%, &Next >

WinWait, %winTitleFree%, Click the Finished button to exit, 120
ControlClick, Button8, %winTitleFree%, &Finished

WinWait, %winTitlePro%, Start Trial, 120
ControlClick, Button2, %winTitlePro%, Decline

WinWait, %app%, , 180
WinClose, %app%

ExitApp