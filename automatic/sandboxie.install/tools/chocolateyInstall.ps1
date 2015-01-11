$packageName = '{{PackageName}}'
$installerType = 'exe'
$url  = '{{DownloadUrl}}'
$url64 = '{{DownloadUrlx64}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$checksum64 = '{{Checksum64}}'
$checksumType64 = 'sha1'
$validExitCodes = @(0)
$chocoRoot = $env:ChocolateyInstall
if ($chocoRoot -eq $null) {
	$chocoRoot = "$env:programdata\chocolatey"
}
$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$ahkFile = "$scriptPath\sandboxie.ahk"
Start-Process 'AutoHotKey' $ahkFile
if (Test-Path $Env:ProgramFiles\$packageName*) { 
	$silentArgs = '/upgrade /S'
} else {
	$silentArgs = '/install /S /D=C:\Program Files\Sandboxie'
}
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgsInstall" "$url" "$url64" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksum64" -checksumType64 "$checksumType64"