$packageName = 'sandboxie.install'
$packageSearch = 'sandboxie'
$fileType = 'exe'
$silentArgs = '/S /remove'
$validExitCodes = @(0)
$unPath = Join-Path 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall' $packageSearch
$unPathWow6432 = Join-Path 'HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall' $packageSearch

try {
  if ($unString = (Get-Item -Path "$unPath*").GetValue('UninstallString')){}
  elseif ($unString = (Get-Item -Path "$unPathWow6432*").GetValue('UninstallString')){}
  else {
    Write-Warning "Error: $packageName is not installed."
    Write-Warning "Please contact package maintainer(s) at https://chocolatey.org/packages/$packageName/ContactOwners"
    throw
  }
  if ($unString | Select-String -Pattern / ) {
    $unString = $unString | %{ $_.Split(' /')[0]; }
  }
  Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
} catch {
  throw $_.Exception.Message
}