$packageName = 'stunnel'
$version = '5.07'
$url = 'https://www.stunnel.org/downloads/stunnel-5.07-installer.exe'
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