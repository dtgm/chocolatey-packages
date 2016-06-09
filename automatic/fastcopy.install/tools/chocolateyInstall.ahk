; First, install
Run, %1%, , Min
winWait, FastCopy Setup
ControlClick, Start, FastCopy Setup
WinWait, Install, Starting
ControlClick, OK, Install
WinWait, Install, The setup was completed
ControlClick, Launch, Install

; Next, add/update shell extensions
WinWait, FastCopy ver
WinMenuSelectItem, FastCopy ver, ,Option,Extensions,Shell Extension
WinWait, Shell Extension Settings
ControlGetText, ButtonText, Button1, Shell Extension Settings
Param = %2%
if (ButtonText = "Install" AND Param = "") {
   ; Dont change previous shell extension submenu choice if 
   ;   updating or if the install-user requests 'NoSubs'.
   ControlClick, Button7, Shell Extension Settings
   ControlClick, Button10, Shell Extension Settings
}
ControlClick, %ButtonText%, Shell Extension Settings
WinClose Shell Extension Settings
WinClose FastCopy ver