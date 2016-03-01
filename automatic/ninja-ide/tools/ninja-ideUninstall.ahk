#NoEnv
SetTitleMatchMode, 1  ;begins
DetectHiddenText, off
DetectHiddenWindows, off

winTitle = Ninja ahk_class #32770

WinWait, %winTitle%, Are you sure you want to remove Ninja, 30
ControlClick, Button1, %winTitle%, &Yes,
WinWait, %winTitle%, OK, 30
ControlClick, Button1, %winTitle%, OK,

ExitApp