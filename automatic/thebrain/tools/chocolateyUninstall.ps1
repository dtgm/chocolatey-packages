try {
	$packageName = '{{PackageName}}'
	$fileType = 'exe'
	$silentArgs = '-q'
	$validExitCodes = @(0)
	$chocoRoot = $env:ChocolateyInstall
	if ($chocoRoot -eq $null) {
		$chocoRoot = "$env:programdata\chocolatey"
	}
	$chocoLib = Join-Path $chocoRoot 'lib'
	if (Test-Path $chocoLib\$packageName.install.[0-9]*) { 
		Remove-Item "$chocoLib\$packageName.install.[0-9]*" -Force -Recurse -ErrorAction SilentlyContinue
		Write-Debug "Deleted $chocoLib\$packageName.install.*"
	}
	$unFile = (Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | select DisplayName, UninstallString | Where-Object {$_.DisplayName -like "$packageName*"}).UninstallString
	if ($unFile -eq $null) {
		$unFile = (Get-ItemProperty HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | select DisplayName, UninstallString | Where-Object {$_.DisplayName -like "$packageName*"}).UninstallString
	}
	Uninstall-ChocolateyPackage "$packageName" "$fileType" "$silentArgs" "$unFile" -validExitCodes "$validExitCodes"
	Write-ChocolateySuccess $packageName
} catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}