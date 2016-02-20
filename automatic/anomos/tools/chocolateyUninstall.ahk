#NoEnv
SetTitleMatchMode, RegEx
DetectHiddenText, off
DetectHiddenWindows, off

WinWait, Anomos [\d\.]+ Uninstall, Are you sure you want to completely remove, 15
WinActivate
ControlClick, Button1, Anomos [\d\.]+ Uninstall, &Yes

WinWait, Anomos [\d\.]+ Uninstall, OK, 15
WinActivate
ControlClick, Button1, Anomos [\d\.]+ Uninstall, OK

ExitApp