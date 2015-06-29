; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 2

; variables
winTitleIE = - Internet Explorer ahk_class IEFrame ahk_exe iexplore.exe
winTitleAddons = Manage Add-ons ahk_class #32770 ahk_exe iexplore.exe
winTitleEnable = Enable add-on ahk_class #32770 ahk_exe iexplore.exe

Process, Exist, iexplore.exe
if !ErrorLevel = 0 {
  procExists = 1
  WinActivate,%winTitleIE%
} else {
  procExists = 0
  Run, iexplore, , , pid
;  WinWait, ahk_pid %pid%, Address Bar, 60  ;too quick
;  WinActivate, ahk_pid %pid%, , 10
  WinWait, %winTitleIE%, , 60
  WinActivate, %winTitleIE%, , 60
  Sleep 1000
}

Loop {
  Send {ALT Down}x{ALT Up}m
  IfWinExist, %winTitleAddons% 
  {
    WinActivate
    break
  }
  Sleep 150
}

Send {TAB 2}QTTabBar{ALT Down}e{ALT Up}
Sleep 1000

IfWinActive, %winTitleEnable%
{
  Send {ENTER}
  Send {ALT Down}l{ALT Up}
  CloseIE()
  sleep 10000
  Return
}
IfWinActive, %winTitleAddons% 
{
  Send {ALT Down}l{ALT Up}
  CloseIE()
}

CloseIE()
{
  if procExists = 1 
  {
    WinActivate,%winTitleIE%,  
    Send, ^t
  }
  else
  {
    WinClose, ahk_exe iexplore.exe
  }
}

; File Explorer
Run, explorer
WinWait, ahk_exe explorer.exe, , 60
WinActivate, ahk_exe explorer.exe
Sleep 500
SetKeyDelay 50
Send {ALT}
Send {V}
Send {Y}
Send {DOWN 2}
Send {SPACE}
Send {ALT down}{F4}