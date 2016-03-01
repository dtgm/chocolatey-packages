#NoEnv
SetTitleMatchMode, RegEx
DetectHiddenText, off
DetectHiddenWindows, off

%winTitleOutdated% = Outdated version
%winTitleTerms% = AdwCleaner - Terms of use

loop,
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