function Get-UninstallString {
  $regPath = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\nbi-nb-base*'
  $key = Get-Item -Path $regPath -ErrorAction Stop
  $uninstallString = $key.GetValue('UninstallString')
	# $uninstallString = (Get-ChildItem $regPath).GetValue('UninstallString')
   
  if ($uninstallString) {
    return $uninstallString
  }
  else {
    throw [System.IO.FileNotFoundException] "Uninstall string not found in `"$regPath`"."
  }
}

try {
	$packageName = 'netbeans'
  $uninstallArgs = '--silent'
  $validExitCodes = @(0)
  Start-ChocolateyProcessAsAdmin $uninstallArgs $(Get-UninstallString) -validExitCodes $validExitCodes
  Write-ChocolateySuccess $packageName
}
catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}