$packageName = 'usagestats'
$msiPath = Join-Path $Env:TEMP ('chocolatey\' + $packageName + '\' + $packageName + 'Install.msi')
$statements = '/x "' + $msiPath + '" /quiet'
Start-ChocolateyProcessAsAdmin $statements "msiexec"