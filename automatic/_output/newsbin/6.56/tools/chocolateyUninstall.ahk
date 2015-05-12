#NoEnv
SetTitleMatchMode, 1  ;begins
DetectHiddenText, off
DetectHiddenWindows, off

WinWait, Newsbin Pro Uninstall ahk_class #32770, , 15
WinActivate
ControlClick, Button1, Newsbin Pro Uninstall ahk_class #32770, Remove Newsbin Data Files

WinWait, Newsbin Pro Uninstall ahk_class #32770, , 15
WinActivate
ControlClick, Button1, Newsbin Pro Uninstall ahk_class #32770, Are you really

WinWait, Newsbin Pro Uninstall ahk_class #32770, , 15
WinActivate
ControlClick, Button1, Newsbin Pro Uninstall ahk_class #32770, Remove Newsbin Pro Application Folder

WinWait, Newsbin Pro Uninstall ahk_class #32770, , 15
WinActivate
ControlClick, Button1, Newsbin Pro Uninstall ahk_class #32770, Remove Newsbin's Windows Registry entries

ExitApp