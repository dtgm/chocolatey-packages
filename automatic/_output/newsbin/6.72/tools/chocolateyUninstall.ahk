#NoEnv
SetTitleMatchMode, 1  ;begins
DetectHiddenText, off
DetectHiddenWindows, off

winTitle = Newsbin Pro Uninstall ahk_class #32770

WinWait, %winTitle%, , 15
ControlClick, Button1, %winTitle%, Remove Newsbin Data Files

WinWait, %winTitle%, , 15
ControlClick, Button1, %winTitle%, Are you really

WinWait, %winTitle%, , 15
ControlClick, Button1, %winTitle%, Remove Newsbin Pro Application Folder

WinWait, %winTitle%, , 15
ControlClick, Button1, %winTitle%, Remove Newsbin's Windows Registry entries

ExitApp