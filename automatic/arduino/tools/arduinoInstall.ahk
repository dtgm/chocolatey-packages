#NoEnv
SendMode Input
SetTitleMatchMode, 1   ;begins
DetectHiddenText, off  ;toggle search hidden window text
DetectHiddenWindows, off  ;toggle detect hidden windows

winTitle = Windows Security ahk_class #32770

WinWait, %winTitle%, You should only install driver software from publishers you trust, 300
ControlClick, &Install, %winTitle%

ExitApp