﻿; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 2  ;contains

; variables
winTitle1 = Uninstall /Repair Total Commander ahk_class #32770
winTitle2 = Uninstall Total Commander ahk_class #32770
winTitle3 = Uninstall ahk_class #32770

WinWait, %winTitle1%, Removes the program, 20
ControlClick, Button1, %winTitle1%, &Uninstall

WinWait, %winTitle2%, Uninstall Program, 20
ControlClick, Button4, %winTitle2%, Remove configuration files
ControlClick, Button5, %winTitle2%, Uninstall

WinWait, %winTitle3%, Warning: This will, 20
ControlClick, Button1, %winTitle3%, &Yes

WinWait, %winTitle3%, The following, 20
ControlClick, Button1, %winTitle3%, OK

WinWait, %winTitle3%, , 20
ControlClick, Button1, %winTitle3%, OK

ExitApp
