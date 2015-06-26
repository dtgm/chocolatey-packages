$packageName = 'qttabbar'
$url = 'http://qttabbar.wdfiles.com/local--files/qttabbar/QTTabBar_1025.zip'
$checksum = '338e82bc3132671d9df4c303933fcbcadd4d8c4b'
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