#NoEnv
#NoTrayIcon
SendMode Input
SetTitleMatchMode, 2   ;text must contain
DetectHiddenText, off  ;toggle search hidden window text
DetectHiddenWindows, off  ;toggle detect hidden windows

WinWait, Arduino Uninstall ahk_class #32770, Warning, 20
ControlClick, OK, Arduino Uninstall ahk_class #32770
WinWait, Arduino Uninstall ahk_class #32770, The Arduino software has been uninstalled, 20
ControlClick, OK, Arduino Uninstall ahk_class #32770

ExitApp