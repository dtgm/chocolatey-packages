SetTitleMatchMode, 1  ;matches if title begins with string
WinWait, FontMatrix ahk_class #32770, OK, 120
WinActivate
ControlClick, Button1, ahk_class #32770
ExitApp