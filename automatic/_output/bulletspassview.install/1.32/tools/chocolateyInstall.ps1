$packageName = 'bulletspassview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/bulletspassview_setup.exe'
$checksum = 'ed2c3f60a189770816d6deb5746f79f9ee6e19f0'
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