; default environment
DetectHiddenWindows, off
SetKeyDelay, 100

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 2

; variables
winTitleLang = Language Selection ahk_class SunAwtDialog ahk_exe javaw.exe
winTitleInstaller = IzPack - Installation of i2p ahk_class SunAwtFrame ahk_exe javaw.exe
winTitleDirExist = Warning! ahk_class SunAwtDialog ahk_exe javaw.exe
winTitleDirNew = Message ahk_class SunAwtDialog ahk_exe javaw.exe

; automate install with default options
WinWait, %winTitleLang%, , 10
WinActivate, %winTitleLang%
Send {ENTER}

WinWait, %winTitleInstaller%, , 10
WinActivate, %winTitleInstaller%
Send {ENTER 4}

Loop, 1000 {
  IfWinExist, %winTitleDirExist% 
  {
    WinActivate
    Send {ENTER}
  }
  IfWinExist, %winTitleDirNew% 
  {
    WinActivate
    Send {ENTER}
  }
  IfWinExist, %winTitleInstaller% 
  {
    WinActivate
    Send {ENTER}
  }
  Else
    break
  Sleep 150
}