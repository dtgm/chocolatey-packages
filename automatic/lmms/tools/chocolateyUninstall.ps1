$packageName = '{{PackageName}}'
$fileType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$unPath = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
$unPathWow = 'HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
try {
  if ((Get-ItemProperty $unPath\$packageName)) {
    $unString = (Get-ItemProperty $unPath\$packageName UninstallString).UninstallString
  } elseif ((Get-ItemProperty $unPathWow\$packageName)) {
    $unString = (Get-ItemProperty $unPathWow\$packageName UninstallString).UninstallString
  }	else {
    Write-Warning "$packageName is not installed."
  }
  Uninstall-ChocolateyPackage -PackageName "$packageName" `
                              -FileType "$fileType" `
                              -SilentArgs "$silentArgs" `
                              -File "$unString" `
                              -validExitCodes $validExitCodes
} catch {
  throw $_.Exception
}