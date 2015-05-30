$packageName = 'duplicati.portable'
$url  = 'http://duplicati.googlecode.com/files/Duplicati%201.3.4.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation