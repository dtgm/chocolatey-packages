; default environment
DetectHiddenWindows, off
SetKeyDelay, 150

; modified environment
#NoEnv
;#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 3 ;exact

; variables
;winTitleLang = Language Selection ahk_class SunAwtDialog ahk_exe javaw.exe
;winTitleInstaller = IzPack - Installation of i2p ahk_class SunAwtFrame ahk_exe javaw.exe
;winTitleDirExist = Warning ahk_class SunAwtDialog ahk_exe javaw.exe
;winTitleDirNew = Message ahk_class SunAwtDialog ahk_exe javaw.exe
winTitleLang = Language Selection
winTitleInstaller = IzPack - Installation of i2p
winTitleDirExist = Warning!
winTitleDirNew = Message
winTitleQuit = Are you sure you want to quit?

; automate install with default options
WinWait, %winTitleLang%, , 5
WinActivate, %winTitleLang%
Send {ENTER}

WinWait, %winTitleInstaller%, , 5
WinActivate, %winTitleInstaller%
Send {ENTER 4}

Sleep, 500
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

WinWait, %winTitleInstaller%, , 5
WinActivate, %winTitleInstaller%
Send {ENTER}

dir := "C:\Program Files\i2p\licenses"
sub_checkDir:
Loop
{
	Loop, %dir%\*.*
		number := A_Index
	if Number > 31
	{
    Send {ENTER}
		break
	}
	else
	{
		sleep 1000
		continue
	}
}

Sleep 200
IfWinExist, %winTitleQuit% 
{
  WinActivate
  Send {TAB}
  Send {ENTER}
  Sleep 3000
  gosub sub_checkDir
}
IfWinExist, %winTitleInstaller% 
{
  WinActivate
  Send {ENTER}
}