; default environment
DetectHiddenWindows, off
SetControlDelay, 20
SetKeyDelay, 10

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1

winTitleInstall = Application Install - Security Warning
winTitleInstallText = Do you want to install
winTitleOpen = Open File - Security Warning ahk_exe dfsvc.exe
winTitleOpenText = Do you want to run this file
winTitleProgress = Installing GitHub
winTitleExec = GitHub ahk_exe GitHub.exe

; Confirm start install
WinWait, %winTitleInstall%, %winTitleInstallText%
ControlClick, &Install, %winTitleInstall%

; Download progress window
; About 110 MB file with 1.0 Mbps bandwidth will download in about 15 seconds
SetTitleMatchMode, 2
WinWait, %winTitleProgress%, This may take several minutes, 5
WinMinimize, %winTitleProgress%, This may take several minutes

; Upon completion of download, files are extracted and exe is started:
;   $Env:LocalAppData\Apps\2.0\varSysUniq01\varSysUniq02\
;   gith..tion_317444273a93ac29_0002.000d_7c798cfff9a06ed4\GitHub.exe
SetTitleMatchMode, 1
WinWait, %winTitleOpen%, %winTitleOpenText%

; Multiple ControlClick's are not reliable so loop until window gone
Loop, 100 {
  IfWinExist, %winTitleOpen%, %winTitleOpenText%
  {
    ; unblock executable
    ControlGet, chk, Checked, , Button4, %winTitleOpen%
    if chk
      ControlClick, Button4, %winTitleOpen%
    ControlClick, &Run, %winTitleOpen%
  }
  IfWinNotExist, %winTitleOpen%, %winTitleOpenText%
    Break
}

WinWait, %winTitleExec%
WinClose, %winTitleExec%

ExitApp