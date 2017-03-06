; default environment
DetectHiddenWindows, off
SetControlDelay, 20

; modified environment
#NoEnv
#NoTrayIcon
DetectHiddenText, off

; variables
procName = Nzbdrone.master.exe
winConsole = ahk_class ConsoleWindowClass ahk_exe NzbDrone.Console.exe

; window handling
Process, wait, %procName%, 15
nPID = %ErrorLevel%
if (nPID = 0) {
  return
}
Loop, 1000 {
  WinWait, %winConsole%, , 1
  WinMinimize, %winConsole%
  Process, Exist, %procName%
  nPID = %ErrorLevel%
  if (nPID = 0) {
    break
  }
}