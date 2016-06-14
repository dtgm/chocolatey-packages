;;;;;;;;;;;;;;;;;;;;;;;
; DOCUMENTATION
;;;;;;;;;;;;;;;;;;;;;;;
;Tutorial https://autohotkey.com/docs/Tutorial.htm
;Command list https://autohotkey.com/docs/commands/
;Examples https://autohotkey.com/docs/scripts/index.htm


;;;;;;;;;;;;;;;;;;;;;;;
; Dos and Don'ts
;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;
; HEADER
;;;;;;;;;;;;;;;;;;;;;;;

; default environment
#CommentFlag ;  ; e.g. // to change to C++ comment style.
DetectHiddenWindows, off  ; speeds up perf by ignoring hidden windows
SetControlDelay, 20  ; usually sufficient
SendMode, Input  ; Recommended for new scripts due to its superior speed and reliability.

; modified environment
#NoEnv ; Avoids checking empty variables to see if they are environment variables (recommended for all new scripts). Use EnvGet to retrieve environment variables, or use built-in variable https://autohotkey.com/docs/Variables.htm#BuiltIn
#NoTrayIcon  ; Disables showing AHK trayicon while running, desired for silent install
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
DetectHiddenText, off  ; Toggle search hidden window text
SetTitleMatchMode, 1  ; 1=begins, 2=contains, 3=exact, Regex=Regular expressions


; troubleshooting
; #Warn  ; Enable warnings to assist with detecting common errors.

; variables
winTitle = monotone documentation: Top -  









;;;;;;;;;;;;;;;;;;;;;;;
; Common mistakes
;;;;;;;;;;;;;;;;;;;;;;;
WinWaitActive, %winTitle% ; DON'T USE; not necessary






;;;;;;;;;;;;;;;;;;;;;;;
; Confirmation popups
;;;;;;;;;;;;;;;;;;;;;;;

WinWait, %winTitle%, Are you sure, 180
ControlClick, Button1, %winTitle%, &Yes
WinWait, %winTitle%, , 180
ControlClick, Button1, %winTitle%, OK


;;;;;;;;;;;;;;;;;;;;;;;
; Minimize progress window
;;;;;;;;;;;;;;;;;;;;;;;
WinWait, %winTitle%, , 30
WinMinimize, %winTitle%



;;;;;;;;;;;;;;;;;;;;;;;
; Send keystrokes with ControlSend to avoid having to activate the Window first
;;;;;;;;;;;;;;;;;;;;;;;
ControlSend, TkChild9, {Tab}{Enter}, %winTitle%




;;;;;;;;;;;;;;;;;;;;;;;
; Wait for file to be removed
;;;;;;;;;;;;;;;;;;;;;;;
startMenuEntry = C:\programdata\microsoft\Windows\Start Menu\Programs\ActiveState ActiveTcl*
; 60*500ms = 30 seconds
Loop, 60 {
  IfNotExist, %startMenuEntry%
    break
  Sleep, 500
}



;;;;;;;;;;;;;;;;;;;;;;;
; Using regex
; Requires each window to appear in specific order
; If one window does not appear, the window will show until the previous timeout is reached; this is between 5-15 seconds as specified below
; If the windows appear out of order, this will not work.
;;;;;;;;;;;;;;;;;;;;;;;
SetTitleMatchMode, RegEx
DetectHiddenText, off
DetectHiddenWindows, off

winTitleSetup = Anomos [\d\.]+ Setup
winTitleRedist = Microsoft Visual C\+\+ 2008 Redistributable Setup
winTitleOpenssl = Setup
winTitleOpensslLt = Setup \- OpenSSL Light
winTitleExit = Exit Setup

WinWait, %winTitleSetup%, Anomos needs some additional software to run properly, 15
ControlClick, Button1, %winTitleSetup%, Anomos needs some additional software

WinWait, %winTitleRedist%, &Cancel, 15
ControlClick, Button13, %winTitleRedist%, &Cancel

WinWait, %winTitleRedist%, Are you sure you want to cancel setup, 5
ControlClick, Button1, %winTitleRedist%, &Yes

WinWait, %winTitleRedist%, You have chosen to cancel setup, 5
ControlClick, Button2, %winTitleRedist%, &Finish

WinWait, %winTitleOpenssl%, The Win32 OpenSSL, 5
ControlClick, Button1, %winTitleOpenssl%, OK

WinWait, %winTitleOpensslLt%, This will install, 10
ControlClick, TNewButton2, %winTitleOpensslLt%, Cancel

WinWait, %winTitleExit%, Setup is not complete, 5
ControlClick, Button1, %winTitleExit%, &Yes



;;;;;;;;;;;;;;;;;;;;;;;
; Handle multiple windows where some windows may not appear depending on env
; End on final window that is always present
;;;;;;;;;;;;;;;;;;;;;;;
%winTitleOutdated% = Outdated version
%winTitleTerms% = AdwCleaner - Terms of use

; loops 240 times, pause for 250ms == will scan for windows for 60 seconds
; IOW this will check for all the specified windows 240 times every 250 milliseconds 
; meaning it will scan for about 60 seconds
Loop, 240
{
  Sleep, 250
  IfWinExist, %winTitleOutdated%, Cancel
  {
    ControlClick, Button2, %winTitleOutdated%, Cancel
  }
  IfWinExist, %winTitleTerms%, I agree
  {
    ControlClick, Button1, %winTitleTerms%, I agree,
  }
  IfWinExist, AdwCleaner - v, Scan
  {
    WinClose, AdwCleaner - v, Scan
    ExitApp
  }
}



;;;;;;;;;;;;;;;;;;;;;;;
; JAVA ISSUES
;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;
; Java may not support ControlClick/ControlSend; must use WinActivate and use Send/Click
;;;;;;;;;;;;;;;;;;;;;;;
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



;;;;;;;;;;;;;;;;;;;;;;;
; Progress and Finished windows are the same, so we watch for directory to be removed to determine when uninstall is completed and we should close the dialog box.
;;;;;;;;;;;;;;;;;;;;;;;
winTitle = IzPack - Uninstaller ahk_class SunAwtFrame

WinWait, %winTitle%, , 30
WinActivate
Send {Space}{Tab}{Enter}
WinMinimize, %winTitle%
Loop {
  Sleep 500
  IfExist, C:\Program Files\IzPack\
    continue
  Else {
    WinClose, %winTitle%
    break
  }
}



;;;;;;;;;;;;;;;;;;;;;;;
; Manually move mouse relative to window
; When you cannot use ControlClick/Send or navigate controls with keyboard
; Least reliable
; Requires window be fixed size regardless of resolution
;;;;;;;;;;;;;;;;;;;;;;;
CoordMode, Mouse, Relative

winTitle1 = Soluto Uninstaller
winTitle2 = Research.net Powered Online Survey

WinWait, %winTitle1%, , 120
WinActivate
MouseMove, 150, 300
MouseMove,   0,  45, 30, R
Click



;;;;;;;;;;;;;;;;;;;;;;;
; PROCESS HANDLING, wait on process event to trigger action
;;;;;;;;;;;;;;;;;;;;;;;
; variables
procName = Nzbdrone.master.exe
winConsole = ahk_class ConsoleWindowClass ahk_exe NzbDrone.Console.exe

; window handling
Process, wait, %procName%, 15
nPID = %ErrorLevel%
if (nPID = 0) {
  return
}
Loop {
  WinWait, %winConsole%, , 1
  WinMinimize, %winConsole%
  Process, Exist, %procName%
  nPID = %ErrorLevel%
  if (nPID = 0) {
    break
  }
}




;;;;;;;;;;;;;;;;;;;;;;;
; 
;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;
; Close web page based on HTML title tag
;   requires browser to display the HTML title element in the window titlebar
;   requires browser to support CTRL+W keyboard shortcut to close a tab 
;;;;;;;;;;;;;;;;;;;;;;;
SetTitleMatchMode, 1  ;begins

; variables
winTitle1 = AVG AntiVirus Free Edition
winTitle2 = AVG | Thank you for installing

WinWait, %winTitle1%, , 3600
WinMinimize, %winTitle1%

WinWait, %winTitle2%, , 300
WinActivate
Send, ^w



;;;;;;;;;;;;;;;;;;;;;;;
; Ibid; also verify URL in addressbar before closing webpage
;   requires browser to support Alt+D keyboard shortcut to select text in addressbar
;;;;;;;;;;;;;;;;;;;;;;;
WinWait, %winTitle%, , 180
WinActivate
CheckAddressBar()

CheckAddressBar()
{
   KeyWait Control
   KeyWait Shift
   BackupClipbrd := Clipboard
   Sleep 50
   Send !d  ;Select the url
   Sleep 150
   Send ^c  ;Copy the url
   ClipWait 0.1
   If ERRORLEVEL
   {
    Clipboard := BackupClipbrd
    Return
   }
  If Clipboard Contains monotone/documentation/html/index.html
    Send, ^w
   Clipboard := BackupClipbrd
}



;;;;;;;;;;;;;;;;;;;;;;;
; Install "File Explorer" (explorer.exe) extension
;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;
; qttabbar/tools/chocolateyInstall.ahk
;;;;;;;;;;;;;;;;;;;;;;;
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
winTitleException = ahk_class #32770 ahk_exe QTTabBar.exe
winTextException = System.NullReferenceException: Object reference not set to an instance of an object

WinWait, %winTitleException%, , 5
ControlClick, OK, %winTitleException%, %winTextException%

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
  Send {ALT Down}x{ALT Up}m
  Sleep 250
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
    Send, ^w
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



;;;;;;;;;;;;;;;;;;;;;;;
; qttabbar/tools/chocolateyInstallPost.ahk
;;;;;;;;;;;;;;;;;;;;;;;
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
  Send {ALT Down}x{ALT Up}m
  Sleep 250
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
    Send, ^w
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


;;;;;;;;;;;;;;;;;;;;;;;
;qttabbar/tools/chocolateyInstallPre.ahk
;;;;;;;;;;;;;;;;;;;;;;;
; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 2

; variables
winTitleException = ahk_class #32770 ahk_exe QTTabBar.exe
winTextException = System.NullReferenceException: Object reference not set to an instance of an object

WinWait, %winTitleException%, %winTextException%, 20
ControlClick, OK, %winTitleException%, %winTextException%

qttabbar/tools/chocolateyUninstall.ahk

; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 2

; variables
winTitleException = ahk_class #32770 ahk_exe QTTabBar.exe
winTextException = System.IO.DirectoryNotFoundException: Could not find a part of the path

WinWait, %winTitleException%, , 10
ControlClick, OK, %winTitleException%, %winTextException%




;;;;;;;;;;;;;;;;;;;;;;;
; 
;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;
; FOOTER
;;;;;;;;;;;;;;;;;;;;;;;
# if script IS #persistent
Exit ; terminates the current thread, making it equivalent to Return
ExitApp ; terminates the script unconditionally (all threads)

# if script NOT #persistent
Exit     ; Terminates the script unconditionally.
ExitApp  ; Terminates the script unconditionally, run OnExit subroutine if present.
;Exit/ExitApp [, ExitCode]
;ExitCode is an integer between -2147483648 and 2147483647 (can be an expression in v1.0.48.01+) that is returned to its caller when the script exits. This code is accessible to any program that spawned the script, such as another script (via RunWait) or a batch (.bat) file. If omitted, ExitCode defaults to zero. Zero is traditionally used to indicate success.
;;;;;;;;;;;;;;;;;;;;;;;
