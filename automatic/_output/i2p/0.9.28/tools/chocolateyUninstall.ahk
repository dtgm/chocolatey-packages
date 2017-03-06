; default environment
DetectHiddenWindows, off
SetKeyDelay, 100

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 2

; variables
winTitleInstaller = IzPack - Uninstaller ahk_class SunAwtFrame ahk_exe java.exe

; automate uninstall with default options
WinWait, %winTitleInstaller%, , 60
WinActivate, %winTitleInstaller%, , 60
Send {SPACE}
Send {TAB}
Send {ENTER}
Sleep 2000
Send {ENTER}