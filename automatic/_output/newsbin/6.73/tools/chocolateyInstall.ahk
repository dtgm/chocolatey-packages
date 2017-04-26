#NoEnv
SetTitleMatchMode, 1  ;begins
DetectHiddenText, off
DetectHiddenWindows, off

winTitle = Newsbin Pro Setup ahk_class #32770

WinWait, %winTitle%, , 120
ControlClick, Button1, %winTitle%, Existing Newsbin Configuration File was found

ExitApp