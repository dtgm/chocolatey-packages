#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 1   ;begins
DetectHiddenText, off
DetectHiddenWindows, off

winTitle = Software Informer - 

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
  If Clipboard Contains uninstalled
    Send, ^w
   Clipboard := BackupClipbrd
}

ExitApp