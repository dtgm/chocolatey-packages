#NoEnv
SetTitleMatchMode, RegEx
DetectHiddenText, off
DetectHiddenWindows, off

loop,
{
  Sleep, 1000
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
  Sleep, 200
}

