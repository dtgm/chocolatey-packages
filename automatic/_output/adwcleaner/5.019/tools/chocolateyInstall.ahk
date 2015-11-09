#NoEnv
SetTitleMatchMode, RegEx
DetectHiddenText, off
DetectHiddenWindows, off

loop,
{
  Sleep, 250
  IfWinExist, Outdated version, Cancel
  {
    WinActivate
    ControlClick, Button2, Outdated version, Cancel
  }
  IfWinExist, AdwCleaner - Terms of use, I agree
  {
    WinActivate
    ControlClick, Button1, AdwCleaner - Terms of use, I agree,  
  }
  IfWinExist, AdwCleaner - v, Scan
  {
    WinClose, AdwCleaner - v, Scan
    ExitApp
  }
}