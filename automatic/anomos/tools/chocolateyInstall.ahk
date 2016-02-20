#NoEnv
SetTitleMatchMode, RegEx
DetectHiddenText, off
DetectHiddenWindows, off

WinWait, Anomos [\d\.]+ Setup, Anomos needs some additional software to run properly, 15
WinActivate
ControlClick, Button1, Anomos [\d\.]+ Setup, Anomos needs some additional software

WinWait, Microsoft Visual C\+\+ 2008 Redistributable Setup, &Cancel, 15
WinActivate
ControlClick, Button13, Microsoft Visual C\+\+ 2008 Redistributable Setup, &Cancel

WinWait, Microsoft Visual C\+\+ 2008 Redistributable Setup, Are you sure you want to cancel setup, 5
WinActivate
ControlClick, Button1, Microsoft Visual C\+\+ 2008 Redistributable Setup, &Yes

WinWait, Microsoft Visual C\+\+ 2008 Redistributable Setup, You have chosen to cancel setup, 5
WinActivate
ControlClick, Button2, Microsoft Visual C\+\+ 2008 Redistributable Setup, &Finish

WinWait, Setup, The Win32 OpenSSL, 5
WinActivate
ControlClick, Button1, Setup, OK

WinWait, Setup \- OpenSSL Light, This will install, 10
WinActivate
ControlClick, TNewButton2, Setup \- OpenSSL Light, Cancel

WinWait, Exit Setup, Setup is not complete, 5
WinActivate
ControlClick, Button1, Exit Setup, &Yes

ExitApp