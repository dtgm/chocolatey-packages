$packageName = 'acestream'
#$version = '2.3.0.20140916-next'
$version = '2.3.0-next'
$uninstallRegistryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\AceStream"
$installerType = 'EXE'
$url = 'http://dl.acestream.org/Ace_Stream_Media_2.3.0-next.exe'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$mantainer = 'tonigellida'

try {
 		if (Test-Path $uninstallRegistryPath) {
			$installedVersion = (Get-ItemProperty $uninstallRegistryPath).DisplayVersion
		}
	
	if ($installedVersion -gt $version) {
		Write-Host "Your $packageName $installedVersion is higher than the $version proporcionated by chocolatey repo."
		Write-Host "Please wait or contact the mantainer $mantainer to update this package."
		Write-Host "When the package is updated try another time. Thanks."
		
	} elseif ($installedVersion -eq $version) {
		Write-Host "$packageName $version is already installed."
		
	} else {
	
		# Download and install the program
		$unpath = "%userprofile%\AppData\Roaming\ACEStream\Uninstall.exe"
		
		if (Test-Path $unpath) {
			Uninstall-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$unpath" -validExitCodes $validExitCodes
		}

		Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes
		
		}
	
	Write-ChocolateySuccess $packageName
	
} catch {

		Write-ChocolateyFailure $packageName "$($_.Exception.Message)"
		throw 
}