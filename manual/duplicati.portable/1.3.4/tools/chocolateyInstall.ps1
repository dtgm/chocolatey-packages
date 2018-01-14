$packageName = 'duplicati.portable'
$url  = 'https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/duplicati/Duplicati%201.3.4.zip'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation