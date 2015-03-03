$packageName = 'audacious'
$packageVersion = '3.6'
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFolder = "$packageName-$packageVersion-win"
$url = 'http://distfiles.audacious-media-player.org/audacious-3.6-win32.zip'
$checksum = '837bb193f0f7b279b17e8072a9433b154b78ebfd'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Url64bit "" -Checksum "$checksum" -ChecksumType "$checksumType"
