$packageName = 'qttabbar'
$url = 'http://qttabbar.wdfiles.com/local--files/qttabbar/QTTabBar_1024.zip'
$checksum = '45f80bedb19282e8233ab1229d41f387b5115cdc'
$checksumType = 'sha1'
$installerType = 'exe'
$silentArgs = "/QI"
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Install-ChocolateyInstallPackage -PackageName "$packageName" `
								 -FileType "$installerType" `
								 -SilentArgs "$silentArgs" `
								 -File "$installFile"