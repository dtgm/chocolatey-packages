; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off

; variables
winConsole = ahk_class ConsoleWindowClass ahk_exe NzbDrone.Console.exe

; window handling
WinWait, %winConsole%, , 15
WinMinimize, %winConsole%