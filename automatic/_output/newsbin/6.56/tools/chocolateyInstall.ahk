#NoEnv
SetTitleMatchMode, 1  ;begins
DetectHiddenText, off
DetectHiddenWindows, off

WinWait, Newsbin Pro Setup ahk_class #32770, , 120
WinActivate
ControlClick, Button1, Newsbin Pro Setup ahk_class #32770, Existing Newsbin Configuration File was found
ExitApp