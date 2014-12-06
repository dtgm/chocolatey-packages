try {
	$packageName = '{{PackageName}}'
	$version = '{{PackageVersion}}'
	$installerType = 'exe'
	$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
	$url = '{{DownloadUrl}}'
	$validExitCodes = @(0)
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
	Write-ChocolateySuccess $packageName	
} catch {
	Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
	throw 
}