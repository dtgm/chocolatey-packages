$packageName = 'sandboxie.install'
$installerType = 'EXE'
$url  = 'http://www.sandboxie.com/SandboxieInstall.exe'
$silentArgsInstall = '/install /S /D=C:\Program Files\Sandboxie'
$silentArgsUpgrade = '/upgrade /S'
$chocoRoot = $env:ChocolateyInstall
if ($chocoRoot -eq $null) {
	$chocoRoot = "$env:programdata\chocolatey"
}
$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$ahkFile = "$scriptPath\sandboxie.ahk"

try {
	Start-Process 'AutoHotKey' $ahkFile
	if (Test-Path $chocoRoot\lib\$packageName.[0-9]*) { 
		Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgsUpgrade" "$url"  "$url64"
	} else {
		Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgsInstall" "$url"  "$url64"
	}
	Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}