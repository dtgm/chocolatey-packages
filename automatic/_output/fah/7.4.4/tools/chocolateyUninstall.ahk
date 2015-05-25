; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off
SetTitleMatchMode, 1  ;begins

WinWait, Folding@home Client ahk_class #32770, , 20

Loop {
  Sleep, 2000
  ControlClick, Button1, Folding@home Client ahk_class #32770, &Retry
  Sleep, 200
  IfWinNotExist, Folding@home Client ahk_class #32770
    break
}

ExitApp