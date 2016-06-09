$packageName = '{{PackageName}}'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)

if (Test-Path "${Env:ProgramFiles(x86)}\Create Software\Create Synchronicity\") {
$unString = "${Env:ProgramFiles(x86)}\Create Software\Create Synchronicity\Uninstall.exe"
} elseif (Test-Path "$Env:ProgramFiles\Create Software\Create Synchronicity\") {
$unString = "$Env:ProgramFiles\Create Software\Create Synchronicity\Uninstall.exe"
} else {
Write-Error "Create Synchronicity is not installed."
throw
}
Uninstall-ChocolateyPackage -PackageName "$packageName" `
					-FileType "$installerType" `
					-SilentArgs "$silentArgs" `
					-File "$unString" `
					-ValidExitCodes $validExitCodes