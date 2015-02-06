$packageName = 'sandboxie.install'
$packageMeta = 'sandboxie'

try {
	$fileType = 'exe'
	$silentArgs = '/S /remove'
	$validExitCodes = @(0)
	$unPathx86 = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall'
	$unPath = 'HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
	$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
	$ahkFile = "$scriptPath\sandboxie.ahk"
	$chocoRoot = $env:ChocolateyInstall
	if ($chocoRoot -eq $null) {
		$chocoRoot = "$env:programdata\chocolatey"
	}
	$chocoLib = Join-Path $chocoRoot 'lib'
	if (Test-Path $chocoLib\$packageMeta.[0-9]*) { 
		Remove-Item "$chocoLib\$packageMeta.[0-9]*" -Force -Recurse -ErrorAction SilentlyContinue
		Write-Debug "Deleted $chocoLib\$packageMeta.*"
	}
	Start-Process 'AutoHotKey' $ahkFile
	if (Test-Path $unPathx86\$packageMeta) {
		$unString = (Get-ItemProperty $unPathx86\$packageMeta UninstallString).UninstallString
	}
	if (Test-Path $unPath\$packageMeta) {
		$unString = (Get-ItemProperty $unPath\$packageMeta UninstallString).UninstallString
	}
	if ($unString | select-string -pattern / ) {
		$unProg = $unString | %{ $_.Split(' /')[0]; }
		Uninstall-ChocolateyPackage $packageName $fileType $silentArgs $unProg -validExitCodes $validExitCodes
  }
  Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}