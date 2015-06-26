$packageName = 'littleregistrycleaner'
$installerType = 'EXE'
$url = 'http://skylink.dl.sourceforge.net/project/littlecleaner/Little Registry Cleaner/1.6/Little_Registry_Cleaner_07_07_2013.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {

	Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes
	
	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}