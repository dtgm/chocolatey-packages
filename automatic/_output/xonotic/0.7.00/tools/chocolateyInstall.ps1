$packageName = 'xonotic'
$url = 'http://dl.xonotic.org/xonotic-0.7.0.zip' 
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64

try {
	
	Install-ChocolateyZipPackage $packageName $url $unzipLocation
	
	if ($is64bit) {
		$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\Xonotic\xonotic-x64.exe"
	} else {
		$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\Xonotic\xonotic.exe"
	}
    
    Install-ChocolateyDesktopLink $targetFilePath
	
	Write-ChocolateySuccess $packageName
	
} catch {
	Write-ChocolateyFailure $packageName $($_.Exception.Message)
	throw 
}