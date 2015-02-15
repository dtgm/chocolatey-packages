$packageName = 'freearc.portable'
$url = 'http://freearc.org/download/0.666/FreeArc-portable-0.666-win32.zip'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir"
