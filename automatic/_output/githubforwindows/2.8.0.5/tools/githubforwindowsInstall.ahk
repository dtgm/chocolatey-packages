#NoEnv
SendMode Input
SetControlDelay 20
SetKeyDelay 20
SetTitleMatchMode, 1   ;window's title must begin with WinTitle/WinText
;SetTitleMatchMode, 2   ;window's title can contain WinTitle/WinText anywhere inside it to be a match
DetectHiddenText, off  ;will not search hidden window text
DetectHiddenWindows, off  ;will not detect hidden windows
;WinWait [, WinTitle, WinText, Seconds, ExcludeTitle, ExcludeText]
WinWait, Application Install - Security Warning, , 10 
WinActivate
;ControlClick [, Control-or-Pos, WinTitle, WinText, WhichButton, ClickCount, Options, ExcludeTitle, ExcludeText]
ControlClick, &Install, Application Install - Security Warning
WinWait, Open File - Security Warning ahk_class #32770, , 600
WinActivate
Send {Tab 4}
Sleep 250
ControlSend, , {Enter}, Open File - Security Warning ahk_class #32770
SetTitleMatchMode, 3   ;window's title must exactly match WinTitle/WinText
WinWait, GitHub, , 600
WinActivate
WinClose, GitHub
ExitApp