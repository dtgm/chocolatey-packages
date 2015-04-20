SetTitleMatchMode, 1  ;matches if title begins with string
WinWait, Belvedere ahk_class #32770, Are you sure you want to completely remove, 30
WinActivate
ControlClick, Button1, ahk_class #32770, &Yes,
WinWait, Belvedere ahk_class #32770, OK, 30
WinActivate
ControlClick, Button1, ahk_class #32770, OK,
ExitApp