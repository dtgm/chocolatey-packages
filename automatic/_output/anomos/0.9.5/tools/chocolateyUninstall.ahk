#NoEnv
SetTitleMatchMode, 1  ;begins
DetectHiddenText, off
DetectHiddenWindows, off

WinWait, Anomos [\d\.]+ Uninstall, Are you sure you want to completely remove, 15
WinActivate
ControlClick, Button1, Anomos [\d\.]+ Uninstall, Are you sure you want to completely remove

WinWait, Anomos [\d\.]+ Uninstall, OK, 15
WinActivate
ControlClick, Button1, Anomos [\d\.]+ Uninstall, OK

ExitApp