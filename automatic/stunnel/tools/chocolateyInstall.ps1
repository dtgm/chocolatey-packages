$packageName = '{{PackageName}}'
$version = '{{PackageVersion}}'
$url = '{{DownloadUrl}}'
$installerType = 'EXE'
$silentArgs = '/S'
$validExitCodes = @(0)

try {
	Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes"
	Write-ChocolateySuccess $packageName	
} catch {
	Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
	throw 
}