; default environment
DetectHiddenWindows, off
SetControlDelay, 20
SetKeyDelay, 10

; modified environment
#NoEnv
;#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1

winTitleOpen = Open File - Security Warning
winTitleInstall = Application Install - Security Warning
winTitleProgress = Installing GitHub
winTitleExec = GitHub ahk_class HwndWrapper[DefaultDomain

WinWait, %winTitleOpen%, Do you want to run this file, 5
ControlClick, &Run, %winTitleOpen%

WinWait, %winTitleSec%, Do you want to install, 5
ControlClick, &Install, %winTitleSec%

; Download progress window is spawned by Microsoft ClickOnce
; If you know how to silence this window, please send a message to maintainer:
;   https://chocolatey.org/packages/GitHub/ContactOwners
WinWait, %winTitleProgress%, This may take several minutes, 5
WinMinimize, %winTitleProgress%, This may take several minutes

; 45MB file, wait max of 20 minutes (1 Mbps bandwidth ~= 6 minutes to download)
; Upon completion of download, files are extracted to:
;   $Env:LocalAppData\Apps\2.0\varSysUniq01\varSysUniq02\
; Installer blocked due to being marked a downloaded file:
;   gith..tion_317444273a93ac29_0002.000d_7c798cfff9a06ed4\GitHub.exe
WinWait, %winTitleOpen%, Do you want to run this file, 1200
ControlClick, &Run, %winTitleOpen%

; GitHub is launched automatically post-install, close it
WinWait, %winTitleExec%, , 60
WinClose, %winTitleExec%

ExitApp
