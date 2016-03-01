#NoEnv
SendMode Input
SetTitleMatchMode, 2   ;text must contain
DetectHiddenText, off  ;toggle search hidden window text
DetectHiddenWindows, off  ;toggle detect hidden windows

winTitle = FreeArc ahk_class #32770

WinWait, %winTitle%, Are you sure you want to completely remove FreeArc, 20
ControlClick, &Yes, %winTitle%
WinWait, %winTitle%, successfully removed from your computer, 20
ControlClick, OK, %winTitle%

ExitApp