$packageName = 'colorconsole'
$url = 'http://www.softwareok.com/Download/ColorConsole.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation

$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\ColorConsole.exe"

Install-ChocolateyDesktopLink $targetFilePath