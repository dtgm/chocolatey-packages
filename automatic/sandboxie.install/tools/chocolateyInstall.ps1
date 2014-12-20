$packageName = '{{PackageName}}'
$installerType = 'exe'
$url  = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'
$silentArgsInstall = '/install /S /D=C:\Program Files\Sandboxie'
$silentArgsUpgrade = '/upgrade /S'
$validExitCodes = @(0)
$chocoRoot = $env:ChocolateyInstall
if ($chocoRoot -eq $null) {
	$chocoRoot = "$env:programdata\chocolatey"
}
$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$ahkFile = "$scriptPath\sandboxie.ahk"
Start-Process 'AutoHotKey' $ahkFile
if (Test-Path $chocoRoot\lib\$packageName.[0-9]*) { 
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgsUpgrade" "$url" "$url64" -validExitCodes $validExitCodes
} else {
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgsInstall" "$url" "$url64" -validExitCodes $validExitCodes
}