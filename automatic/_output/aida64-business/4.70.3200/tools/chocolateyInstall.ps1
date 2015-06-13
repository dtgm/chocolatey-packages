$packageName = 'aida64-business'
$url = 'http://download.aida64.com/aida64business470.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$executable = "aida64.exe"
$targetFilePath = "$unzipLocation\$executable"

try {
	
	Install-ChocolateyZipPackage $packageName $url $unzipLocation

	Install-ChocolateyDesktopLink $targetFilePath
	
	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}