$packageName = '{{PackageName}}'
$installerType = 'exe'	
$silentArgs = ''
$url = '{{DownloadUrl}}'
$validExitCodes = @(0)
$scriptPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$ahkFile = Join-Path $scriptPath 'swftoolsInstall.ahk'
Start-Process 'AutoHotKey' "$ahkFile"
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes