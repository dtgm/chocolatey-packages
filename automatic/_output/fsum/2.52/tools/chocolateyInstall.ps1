$packageName = 'fsum'
$packageVersion = '2.52'
# no version-specific installers available, only latest
$url = 'http://www.slavasoft.com/zip/fsum.zip'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir"
