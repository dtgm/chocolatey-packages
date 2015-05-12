#NoEnv
SetTitleMatchMode, RegEx  ;begins
DetectHiddenText, off
DetectHiddenWindows, off

WinWait, Anomos [\d\.]+ Setup, Anomos needs some additional software, 15
WinActivate
ControlClick, Button1, Anomos [\d\.]+ Setup, Anomos needs some additional software

WinWait, Microsoft Visual C\+\+ 2008 Redistributable Setup, &Cancel, 15
WinActivate
ControlClick, Button8, Microsoft Visual C\+\+ 2008 Redistributable Setup, &Cancel

WinWait, Microsoft Visual C\+\+ 2008 Redistributable Setup, Are you sure you want to cancel setup, 5
WinActivate
ControlClick, Button1, Microsoft Visual C\+\+ 2008 Redistributable Setup, Are you sure you want to cancel setup

WinWait, Microsoft Visual C\+\+ 2008 Redistributable Setup, You have chosen to cancel setup, 5
WinActivate
ControlClick, Button2, Microsoft Visual C\+\+ 2008 Redistributable Setup, You have chosen to cancel setup

WinWait, Setup \- OpenSSL Light, This will install OpenSSL, 5
WinActivate
ControlClick, TNewButton2, Setup \- OpenSSL Light, This will install OpenSSL

WinWait, Exit Setup, Setup is not complete, 5
WinActivate
ControlClick, Button1, Exit Setup, Setup is not complete

ExitApp