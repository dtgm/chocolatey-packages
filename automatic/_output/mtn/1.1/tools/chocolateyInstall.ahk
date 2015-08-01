; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 2

; variables
winTitle = monotone documentation: Top -  

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

ExitApp