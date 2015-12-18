#NoEnv
SendMode Input
SetTitleMatchMode, 1   ;text must begin with
DetectHiddenText, off  ;toggle search hidden window text
DetectHiddenWindows, off  ;toggle detect hidden windows
WinWait, Windows Security ahk_class #32770, You should only install driver software from publishers you trust, 300
WinActivate
ControlClick, &Install, Windows Security ahk_class #32770
ExitApp