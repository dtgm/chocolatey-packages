; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1

; variables
; install windows = 7
title1 = TrueCrypt Setup ahk_class CustomDlg
title1Text = Please read the license terms
title2 = TrueCrypt Setup ahk_class CustomDlg
title2Text = TrueCrypt Setup Wizard
title3 = TrueCrypt Setup ahk_class CustomDlg
title3Text = Setup Options
;title4 = 
;title4Text = 
title5 = TrueCrypt Setup ahk_class #32770
title5Text = TrueCrypt has been successfully installed
title6 = TrueCrypt Setup ahk_class CustomDlg
title6Text = Please consider making a donation
title7 = TrueCrypt Setup ahk_class #32770
title7Text = Do you want to view the tutorial
waitTime = 20

;ControlClick [, Control-or-Pos, WinTitle, WinText, WhichButton, ClickCount, Options, ExcludeTitle, ExcludeText]
;WinWait [, WinTitle, WinText, Seconds, ExcludeTitle, ExcludeText]


WinWait, %title1%, %title1Text%, %waitTime%
ControlClick, I &accept the license terms, %title1%, %title1Text%

WinWait, %title2%, %title2Text%, %waitTime%
ControlClick, &Next >, %title2%, %title2Text%

WinWait, %title3%, %title3Text%, %waitTime%
;ControlClick, C:\Program Files\TrueCrypt\, %title3%, %title3Text%
;ControlClick, Install &for all users, %title3%, %title3Text%
;ControlClick, Add TrueCrypt to &Start menu, %title3%, %title3Text%
ControlClick, Add TrueCrypt icon to &desktop, %title3%, %title3Text%
;ControlClick, Associate the .tc file &extension with TrueCrypt, %title3%, %title3Text%
;ControlClick, Create System &Restore point, %title3%, %title3Text%
ControlClick, &Next >, %title3%, %title3Text%

;WinWait, %title4%, %title4Text%, %waitTime%
;ControlClick, , %title4%, %title4Text%

WinWait, %title5%, %title5Text%, %waitTime%
ControlClick, OK, %title5%, %title5Text%

WinWait, %title6%, %title6Text%, %waitTime%
ControlClick, &Finish, %title6%, %title6Text%

WinWait, %title7%, %title7Text%, %waitTime%
ControlClick, &No, %title7%, %title7Text%

ExitApp