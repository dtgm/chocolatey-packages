$packageName = '{{PackageName}}'
$fileType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
# find uninstaller
$unPathWow = 'HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
$unPath = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
if (Test-Path $unPathWow\$packageName) {
    $unString = (Get-ItemProperty $unPathWow\$packageName UninstallString).UninstallString
} elseif (Test-Path $unPath\$packageName) {
    $unString = (Get-ItemProperty $unPath\$packageName UninstallString).UninstallString
} else {
    Write-Warning "$packageName is not installed or installer may have changed it's install path."
    Write-Warning "Please alert package maintainer."
    throw
}

# if uninstall string contains a parameter, remove it
if ($unString | select-string -pattern /) {
    $unProg = $unString | %{ $_.Split(' /')[0]; }
} else {
    $unProg = $unString
}

Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unProg" -validExitCodes "$validExitCodes"