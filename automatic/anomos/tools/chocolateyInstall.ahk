#NoEnv
SetTitleMatchMode, RegEx
DetectHiddenText, off
DetectHiddenWindows, off

winTitleSetup = Anomos [\d\.]+ Setup
winTitleRedist = Microsoft Visual C\+\+ 2008 Redistributable Setup
winTitleOpenssl = Setup
winTitleOpensslLt = Setup \- OpenSSL Light
winTitleExit = Exit Setup

WinWait, %winTitleSetup%, Anomos needs some additional software to run properly, 15
ControlClick, Button1, %winTitleSetup%, Anomos needs some additional software

WinWait, %winTitleRedist%, &Cancel, 15
ControlClick, Button13, %winTitleRedist%, &Cancel

WinWait, %winTitleRedist%, Are you sure you want to cancel setup, 5
ControlClick, Button1, %winTitleRedist%, &Yes

WinWait, %winTitleRedist%, You have chosen to cancel setup, 5
ControlClick, Button2, %winTitleRedist%, &Finish

WinWait, %winTitleOpenssl%, The Win32 OpenSSL, 5
ControlClick, Button1, %winTitleOpenssl%, OK

WinWait, %winTitleOpensslLt%, This will install, 10
ControlClick, TNewButton2, %winTitleOpensslLt%, Cancel

WinWait, %winTitleExit%, Setup is not complete, 5
ControlClick, Button1, %winTitleExit%, &Yes

ExitApp