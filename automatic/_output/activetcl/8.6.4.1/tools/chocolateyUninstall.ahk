; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, RegEx

; variables
tkTopLevelTitle = ActiveState ActiveTcl [\d\.]+ Uninstaller ahk_class TkTopLevel
consoleTitle = C:\\Windows\\system32\\cmd\.exe.*at-unins.bat$ ahk_class ConsoleWindowClass
startMenuEntry = C:\programdata\microsoft\Windows\Start Menu\Programs\ActiveState ActiveTcl*

WinWait, %tkTopLevelTitle%, , 30
; ahk_class TkTopLevel represents TK framework which doesn't seem to respond to
;  normal Window messages so rather than indicating specific control classes
;  with ControlClick/Send, navigate controls with Tab (tested 8.6.4.0 installer)
;ControlClick, TkChild3, %tkTopLevelTitle%
WinActivate
Send {Tab 2}{Space}
WinMinimize, %tkTopLevelTitle%

; start menu link is last item to be removed by uninstaller
; wait for this file to be removed, then restore window to continue
Loop {
  IfNotExist, %startMenuEntry%
    break
  Sleep, 500
}

; unsupported TK framework, see previous note
;WinWait, %tkTopLevelTitle%, , 30
;ControlClick, TkChild4, %tkTopLevelTitle%

Sleep, 1500
WinActivate, %tkTopLevelTitle%
Send {Tab}{Space}

WinWait, %consoleTitle%, , 30
WinActivate
Send {Enter}
Sleep, 500
Send {Enter}

ExitApp