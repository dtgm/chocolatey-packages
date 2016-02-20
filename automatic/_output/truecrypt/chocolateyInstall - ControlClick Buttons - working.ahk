; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
;#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1

; variables
waitTime = 20

title1 = TrueCrypt Setup ahk_class CustomDlg
title1Text = Please read the license terms
title1Button1 = Button5
title1Click1 = I &accept the license terms

title1Button2 = Button3
title1Click2 = &Next >

title2 = TrueCrypt Setup ahk_class CustomDlg
title2Text = Wizard Mode
title2Button = Button3
title2Click = &Next >

title3 = TrueCrypt Setup ahk_class CustomDlg
title3Text = Setup Options
;ControlClick, C:\Program Files\TrueCrypt\, %title3%, %title3Text%
;ControlClick, Install &for all users, %title3%, %title3Text%
;ControlClick, Add TrueCrypt to &Start menu, %title3%, %title3Text%
title3ButtonDesktop = Button10
title3ClickDesktop = Add TrueCrypt icon to &desktop
;ControlClick, Associate the .tc file &extension with TrueCrypt, %title3%, %title3Text%
;ControlClick, Create System &Restore point, %title3%, %title3Text%
title3Button = Button3
title3Click = &Next >

;title4 = 
;title4Text = 
;title4Button = 
;title4Click = 

title5 = TrueCrypt Setup ahk_class #32770
title5Text = TrueCrypt has been successfully installed
title5Button = Button1
title5Click = OK

title6 = TrueCrypt Setup ahk_class CustomDlg
title6Text = Please consider making a donation
title6Button = Button3
title6Click = &Finish

title7 = TrueCrypt Setup ahk_class #32770
title7Text = Do you want to view the tutorial
title7Button = Button2
title7Click = &No


WinWait, %title1%, %title1Text%, %waitTime%
WinActivate
ControlClick, %title1Button1%, %title1%, %title1Text%
ControlClick, %title1Button2%, %title1%, %title1Text%

WinWait, %title2%, %title2Text%, %waitTime%
WinActivate
ControlClick, %title2Button%, %title2%, %title2Text%

WinWait, %title3%, %title3Text%, %waitTime%
WinActivate
ControlClick, %title3ButtonDesktop%, %title3%, %title3Text%
Sleep 100
ControlClick, %title3Button%, %title3%, %title3Text%

;WinWait, %title4%, %title4Text%, %waitTime%
;ControlClick, %title4Button%, %title4%, %title4Text%

WinWait, %title5%, %title5Text%, %waitTime%
WinActivate
ControlClick, %title5Button%, %title5%, %title5Text%

WinWait, %title6%, %title6Text%, %waitTime%
WinActivate
ControlClick, %title6Button%, %title6%, %title6Text%

WinWait, %title7%, %title7Text%, %waitTime%
WinActivate
ControlClick, %title7Button%, %title7%, %title7Text%



;ControlClick [, Control-or-Pos, WinTitle, WinText, WhichButton, ClickCount, Options, ExcludeTitle, ExcludeText]
;WinWait [, WinTitle, WinText, Seconds, ExcludeTitle, ExcludeText]
;WinWait, %title1%, %title1Text%, %waitTime%
;WinActivate
;ControlClick, %title1Button%, %title1%, %title1Text%
;
;WinWait, %title2%, %title2Text%, %waitTime%
;WinActivate
;ControlClick, %title2Button%, %title2%, %title2Text%
;
;WinWait, %title3%, %title3Text%, %waitTime%
;WinActivate
;ControlClick, %title3ButtonDesktop%, %title3%, %title3Text%
;Sleep 100
;ControlClick, %title3Button%, %title3%, %title3Text%
;
;WinWait, %title4%, %title4Text%, %waitTime%
;ControlClick, %title4Button%, %title4%, %title4Text%
;
;WinWait, %title5%, %title5Text%, %waitTime%
;WinActivate
;ControlClick, %title5Button%, %title5%, %title5Text%
;
;WinWait, %title6%, %title6Text%, %waitTime%
;WinActivate
;ControlClick, %title6Button%, %title6%, %title6Text%
;
;WinWait, %title7%, %title7Text%, %waitTime%
;WinActivate
;ControlClick, %title7Button%, %title7%, %title7Text%

ExitApp