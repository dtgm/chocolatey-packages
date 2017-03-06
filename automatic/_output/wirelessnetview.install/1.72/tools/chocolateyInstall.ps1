$packageName = 'wirelessnetview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/wirelessnetview_setup.exe'
$checksum = 'c4234fb3050be5f8e42bfdca28bc91a2f6770eb72a102e4d147895cce4f63328'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"