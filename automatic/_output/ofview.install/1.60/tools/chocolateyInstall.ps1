$packageName = 'ofview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/ofview_setup.exe'
$checksum = 'affea11e58f34123970c9df5fdb34d358ce5dfc4'
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