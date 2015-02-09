function Get-UninstallString {
  $regPath = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\5f7eb300e2ea4ebf'
  $key = Get-Item -Path $regPath -ErrorAction Stop
  $uninstallString = $key.GetValue('UninstallString')
	# $uninstallString = (Get-Item -Path $regPath).GetValue('UninstallString')
	
  if ($uninstallString) {
    return $uninstallString
  } else {
    throw [System.IO.FileNotFoundException] "Uninstall string not found in `"$regPath`"."
  }
}

try {
	$packageName = 'githubforwindows'
  $uninstallArgs = '& cmd /c'
  $scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  $ahkFile = Join-Path $scriptPath "$($packageName)Uninstall.ahk"
  $ahkRun = "$Env:Temp\$(Get-Random).ahk"
  Copy-Item $ahkFile "$ahkRun" -Force
  Start-Process 'AutoHotKey' $ahkRun
  Start-ChocolateyProcessAsAdmin "$uninstallArgs $(Get-UninstallString)"
  Remove-Item "$ahkRun" -Force
  Write-ChocolateySuccess $packageName
} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}