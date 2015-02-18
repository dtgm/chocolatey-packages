$packageName = '{{PackageName}}'
$installerType = 'EXE'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {
  $scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  $ahkFile = Join-Path $scriptPath "$($packageName)Uninstall.ahk"
  $ahkExe = 'AutoHotKey'
	$ahkRun = "$Env:Temp\$(Get-Random).ahk"
	Copy-Item $ahkFile "$ahkRun" -Force
  Start-Process $ahkExe $ahkRun
  $osBitness = Get-ProcessorBits
	if ($osBitness -eq 64) {
    $unString = (get-item -path HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\arduino*).getvalue('UninstallString')
  } else {
    $unString = (get-item -path HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\arduino*).getvalue('UninstallString')
  }
	Write-Warning "Warning: All existing files in $(Split-Path $unString)`" will be deleted.  This includes files and folders present before or added since you installed the Arduino software."
	Write-Warning "Ctrl+C to cancel.  Continuing in 5 seconds..."
	Start-Sleep -Seconds 5
  Uninstall-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
  Remove-Item "$ahkRun" -Force
} catch {
  throw $_.Exception 
}
