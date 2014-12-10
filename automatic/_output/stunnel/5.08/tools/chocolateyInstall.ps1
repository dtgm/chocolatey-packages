$packageName = 'stunnel'
$version = '5.08'
$url = 'https://www.stunnel.org/downloads/stunnel-5.08-installer.exe'
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