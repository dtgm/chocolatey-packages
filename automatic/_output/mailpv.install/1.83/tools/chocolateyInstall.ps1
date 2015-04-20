$packageName = 'mailpv.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/toolsdownload/mailpv_setup.exe'
$checksum = '5d2b03debbdb533ba061db3fda8e4a941a333966'
$checksumType = 'sha1'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"