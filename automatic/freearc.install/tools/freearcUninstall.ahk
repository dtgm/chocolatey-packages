#NoEnv
SendMode Input
SetTitleMatchMode, 2   ;text must contain
DetectHiddenText, off  ;toggle search hidden window text
DetectHiddenWindows, off  ;toggle detect hidden windows
WinWait, FreeArc ahk_class #32770, Are you sure you want to completely remove FreeArc, 20
WinActivate
ControlClick, &Yes, FreeArc ahk_class #32770
WinWait, FreeArc ahk_class #32770, successfully removed from your computer, 20
WinActivate
ControlClick, OK, FreeArc ahk_class #32770
ExitApp