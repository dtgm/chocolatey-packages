function Get-UninstallString {
  $regPath = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\nbi-nb-base*'
  $key = Get-Item -Path $regPath -ErrorAction Stop
  $uninstallString = $key.GetValue('UninstallString')
   
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
}
catch {
  throw $_.Exception
}