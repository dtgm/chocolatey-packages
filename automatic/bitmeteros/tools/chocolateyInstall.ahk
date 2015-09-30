; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 2

; variables
winTitle = Codebox Software - Welcome to BitMeter OS ‎-

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
  If Clipboard Contains http://codebox.org.uk/bitmeteros/installed?version=
    Send, ^w
   Clipboard := BackupClipbrd
}

ExitApp
