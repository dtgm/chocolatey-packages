#NoEnv
#NoTrayIcon
DetectHiddenText, off
DetectHiddenWindows, off
SetTitleMatchMode, 1  ;begins

winTitle = Installing Adobe Shockwave Player ahk_class #32770

WinWait, %winTitle%, , 120

ControlGet, varChecked, Checked, , Button1, %winTitle%
if (varChecked = 1) {
  ControlClick, Button1, %winTitle%
}
ControlGet, varChecked, Checked, , Button2, %winTitle%
if (varChecked = 1) {
  ControlClick, Button2, %winTitle%
}

NextButton = Next >
WinGet, List, ControlList, %winTitle%
Loop, Parse, List, `n
{
	ControlGetText, Text, %A_LoopField%, %winTitle%
	If (Text = NextButton)
		 ControlClick, %A_LoopField%, %winTitle%
}

ExitApp