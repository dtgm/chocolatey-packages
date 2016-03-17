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
winTitleExec = GitHub ahk_exe GitHub.exe

Loop {
  Sleep, 500
  IfWinExist, %winTitleOpen%, Do you want to run this file
    ControlClick, &Run, %winTitleOpen%
  IfWinExist, %winTitleSec%, Do you want to install
  {
    ControlClick, &Install, %winTitleSec%
    Break
  }
}

; Download progress window is spawned by Microsoft ClickOnce
; If you know how to silence this window, please send a message to maintainer:
;   https://chocolatey.org/packages/GitHub/ContactOwners
SetTitleMatchMode, 2
WinWait, %winTitleProgress%, This may take several minutes, 5
WinMinimize, %winTitleProgress%, This may take several minutes

; 1. ~45MB file (1 Mbps bandwidth ~= 6 minutes to download)
; Upon completion of download, files are extracted to:
;   $Env:LocalAppData\Apps\2.0\varSysUniq01\varSysUniq02\
; Installer blocked due to being marked a downloaded file:
;   gith..tion_317444273a93ac29_0002.000d_7c798cfff9a06ed4\GitHub.exe
; 2. GitHub is launched automatically post-install, close it
SetTitleMatchMode, 1
Loop {
  Sleep, 500
  IfWinExist, %winTitleOpen%, Do you want to run this file
  {
    ControlClick, &Run, %winTitleOpen%
  }
  IfWinExist, %winTitleExec%
  {
    WinClose, %winTitleExec%
    Break
  }
}

ExitApp