$packageName = 'popcorntime'
$installerType = 'EXE'
$url = 'http://212.47.229.79/build/Popcorn-Time-0.3.5.2-Setup.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {

	Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
	
	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}