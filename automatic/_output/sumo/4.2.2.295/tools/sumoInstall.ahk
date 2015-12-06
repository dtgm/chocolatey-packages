#NoEnv
SetTitleMatchMode, 1  ;matches if title begins with string
DetectHiddenText, off
DetectHiddenWindows, off
WinWait, KC Softwares, Navigation Bar, 30
WinActivate
Send, ^w
ExitApp