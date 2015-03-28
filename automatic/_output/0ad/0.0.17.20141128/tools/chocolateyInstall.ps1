$packageName = '0ad'
$installerType = 'EXE'
$url = 'http://netcologne.dl.sourceforge.net/project/zero-ad/releases/0ad-0.0.17-alpha-win32.exe'
$silentArgs = '/S'
$fileFullPath = "$Env:userprofile\AppData\Local\0 A.D. alpha\binaries\system\pyrogenesis.exe"
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

try {

	Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes

	Install-ChocolateyDesktopLink $fileFullPath
	
	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}