; Uninstall
Run, c:\Program Files\FastCopy\setup.exe, , Min, setupID
WinWait, FastCopy Setup
ControlClick, 2. Uninstall, FastCopy Setup
ControlClick, Start, FastCopy Setup
WinWait, UnInstall, Starting
ControlClick, OK, UnInstall
WinWait, msg, shell extention
ControlClick, OK, msg

; and close the windows containing what the user is supposed to manually delete
WinWait, , %ProgramFiles%\FastCopy, 0
WinClose, , %ProgramFiles%\FastCopy
WinWait, , %APPDATA%\FastCopy, 0
WinClose, , %APPDATA%\FastCopy

Process, WaitClose, setupID, 2
