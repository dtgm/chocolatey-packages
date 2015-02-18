try {
  $packageName = '{{PackageName}}'
  $fileType = 'exe'
  $silentArgs = '/S'
  $validExitCodes = @(0)
  $scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
  $ahkFile = "$scriptPath\$packageName.ahk"
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $unPath = 'HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
    $installPath = ${env:ProgramFiles(x86)}
  } else {
    $unPath = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
    $installPath = $Env:ProgramFiles
  }
  Start-Process 'AutoHotKey' $ahkFile
  $unFile = (Get-ItemProperty $unPath\* | Where-Object {$_.DisplayName -like "$packageName*"}).UninstallString
  Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unFile" -validExitCodes "$validExitCodes"
  $cleanup = gci -re $installPath\$packageName* | ?{ -not $_.PSIsContainer } | measure-object -sum -property Length
  if ($cleanup -eq $null) {
    Remove-Item -Recurse -Force $installPath\$packageName*
  }		
} catch {
  throw $_.Exception 
}