#NoEnv
SetTitleMatchMode, 1  ;matches if title begins with string

winTitle = HandyAndy Says ahk_class #32770

WinWait, %winTitle%, This tool will completely remove traces of Andy, 30
ControlClick, Button1, %winTitle%, &Yes,

ExitApp