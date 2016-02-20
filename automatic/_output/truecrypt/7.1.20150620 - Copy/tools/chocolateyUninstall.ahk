; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1

title1 = TrueCrypt Setup ahk_class CustomDlg
title1Text = Click Uninstall to remove TrueCrypt from this system
title2 = TrueCrypt Setup ahk_class #32770
title2Text = TrueCrypt has been successfully uninstalled
title3 = TrueCrypt Setup ahk_class CustomDlg
title3Text = Click Uninstall to remove TrueCrypt from this system
waitTime = 20

WinWait, %title1%, %title1Text%, %waitTime%
ControlClick, &Uninstall, %title1%, %title1Text%

WinWait, %title2%, %title2Text%, %waitTime%
ControlClick, OK, %title2%, %title2Text%

WinWait, %title3%, %title3Text%, %waitTime%
ControlClick, &Finish, %title3%, %title3Text%

ExitApp