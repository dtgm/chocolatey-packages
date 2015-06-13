$packageName = 'aida64-networkaudit'
$url = 'http://download.aida64.com/aida64networkaudit460.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\aida64.exe"

Install-ChocolateyDesktopLink $targetFilePath