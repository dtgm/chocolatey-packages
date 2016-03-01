; default environment
DetectHiddenWindows, off
SetControlDelay, 20
SetKeyDelay, 10

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, RegEx

winTitle = Application Install - Security Warning
winTitleProgress = Installing GitHub
winTitleSec = Open File - Security Warning ahk_class #32770
winTitleExec = GitHub ahk_class HwndWrapper\[DefaultDomain

WinWait, %winTitle%, Do you want to install this application, 10 
ControlClick, &Install, %winTitle%

; Download progress window is spawned by Microsoft ClickOnce
; If you know how to silence this window, please send a message to maintainer:
;   https://chocolatey.org/packages/GitHub/ContactOwners
WinWait, %winTitleProgress%, This may take several minutes, 2
WinMinimize, %winTitleProgress%, This may take several minutes

; 45MB file, wait max of 20 minutes (1 Mbps bandwidth ~= 6 minutes to download)
; Upon completion of download, files are extracted to:
;   $Env:LocalAppData\Apps\2.0\varSysUniq01\varSysUniq02\
; Installer blocked due to being marked a downloaded file:
;   gith..tion_317444273a93ac29_0002.000d_7c798cfff9a06ed4\GitHub.exe
WinWait, %winTitleSec%, , 1200
WinActivate
Send {Tab 4}
Sleep 250
ControlSend, , {Enter}, %winTitleSec%

; GitHub is launched automatically post-install, close it
WinWait, %winTitleExec%, , 60
WinClose, %winTitleExec%

ExitApp
