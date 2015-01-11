try {
	$packageName = 'swftools'
	$fileType = 'exe'
	$silentArgs = ''
	$validExitCodes = @(0)
	$scriptPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
	$ahkFile = Join-Path $scriptPath 'swftoolsUninstall.ahk'
	$ahkRun = "$Env:Temp\$(Get-Random).ahk"
	Copy-Item $ahkFile "$ahkRun" -Force
	$osBitness = Get-ProcessorBits
	if ($osBitness -eq 64) {
		$unPath = "${Env:ProgramFiles(x86)}"
	} else {
		$unPath = "$Env:ProgramFiles"
	}
	$unString = "$unPath\$packageName\uninstall.exe"
	Start-Process 'AutoHotKey' "$ahkRun"
	Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unString" -validExitCodes $validExitCodes
	Remove-Item "$ahkRun" -Force
  Write-ChocolateySuccess $packageName
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw
}

