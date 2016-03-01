#NoEnv
SetTitleMatchMode, 1  ;matches if title begins with string

winTitle = Belvedere ahk_class #32770

WinWait, %winTitle%, Are you sure you want to completely remove, 30
ControlClick, Button1, %winTitle%, &Yes,

WinWait, %winTitle%, OK, 30
ControlClick, Button1, %winTitle%, OK,

ExitApp