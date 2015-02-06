$packageName = 'sandboxie.install'
$installerType = 'exe'
$url  = 'http://www.sandboxie.com/attic/SandboxieInstall32-414.exe'
$url64 = 'http://www.sandboxie.com/SandboxieInstall64-414-4.14.exe'
$checksum = ''
$checksumType = 'sha1'
$checksum64 = ''
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
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgsInstall" "$url" "$url64" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksum64" -checksumType64 "$checksumTypex64"
