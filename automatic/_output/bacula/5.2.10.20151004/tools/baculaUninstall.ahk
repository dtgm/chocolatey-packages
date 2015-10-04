#NoEnv
SetTitleMatchMode, 1  ;begin
WinWait, Bacula Uninstall ahk_class #32770, Would you like to delete the current, 30
WinActivate
ControlClick, Button1, ahk_class #32770, &Yes,
ExitApp