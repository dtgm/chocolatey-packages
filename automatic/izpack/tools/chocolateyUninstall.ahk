; default environment
DetectHiddenWindows, off
SetControlDelay, 20
SetKeyDelay, 10

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1  ;begins

WinWait, IzPack - Uninstaller ahk_class SunAwtFrame, , 30
WinActivate
Send {Space}{Tab}{Enter}
WinMinimize, IzPack - Uninstaller ahk_class SunAwtFrame
Loop {
  Sleep 500
  IfExist, C:\Program Files\IzPack\
    continue
  Else {
    WinClose, IzPack - Uninstaller ahk_class SunAwtFrame
    break
  }
}

ExitApp