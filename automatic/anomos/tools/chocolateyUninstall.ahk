#NoEnv
SetTitleMatchMode, RegEx
DetectHiddenText, off
DetectHiddenWindows, off

winTitle = Anomos [\d\.]+ Uninstall

WinWait, %winTitle%, Are you sure you want to completely remove, 15
ControlClick, Button1, %winTitle%, &Yes

WinWait, %winTitle%, OK, 15
ControlClick, Button1, %winTitle%, OK

ExitApp