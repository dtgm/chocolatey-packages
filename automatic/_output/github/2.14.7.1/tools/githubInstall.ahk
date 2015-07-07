; default environment
DetectHiddenWindows, off
SetControlDelay, 20
SetKeyDelay, 10

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, RegEx

WinWait, Application Install - Security Warning, Do you want to install this application, 10 
WinActivate
ControlClick, &Install, Application Install - Security Warning

; Download progress window is spawned by Microsoft ClickOnce
; If you know how to silence this window, please send a message to maintainer:
;   https://chocolatey.org/packages/GitHub/ContactOwners
WinWait, Installing GitHub, This may take several minutes, 2
WinActivate
WinMinimize, Installing GitHub, This may take several minutes

; 45MB file, wait max of 20 minutes (1 Mbps bandwidth ~= 6 minutes to download)
; Upon completion of download, files are extracted to:
;   $Env:LocalAppData\Apps\2.0\varSysUniq01\varSysUniq02\
; Installer blocked due to being marked a downloaded file:
;   gith..tion_317444273a93ac29_0002.000d_7c798cfff9a06ed4\GitHub.exe
WinWait, Open File - Security Warning ahk_class #32770, , 1200
WinActivate
Send {Tab 4}
Sleep 250
ControlSend, , {Enter}, Open File - Security Warning ahk_class #32770

; GitHub is launched automatically post-install, close it
WinWait, GitHub ahk_class HwndWrapper\[DefaultDomain, , 60
WinActivate
WinClose, GitHub ahk_class HwndWrapper\[DefaultDomain

ExitApp
