#NoEnv
SetTitleMatchMode, 1  ;begin

winTitle = Bacula Uninstall ahk_class #32770

WinWait, %winTitle%, Would you like to delete the current, 30
ControlClick, Button1, %winTitle%, &Yes,

ExitApp