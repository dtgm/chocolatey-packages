; default environment
DetectHiddenWindows, off
SetControlDelay, 20
SetKeyDelay, 10

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1  ;begins

winTitle = IzPack - Uninstaller ahk_class SunAwtFrame

WinWait, %winTitle%, , 30
WinActivate
Send {Space}{Tab}{Enter}
WinMinimize, %winTitle%
Loop, 360 {
  Sleep 500
  IfExist, C:\Program Files\IzPack\
    continue
  Else {
    WinClose, %winTitle%
    break
  }
}

ExitApp