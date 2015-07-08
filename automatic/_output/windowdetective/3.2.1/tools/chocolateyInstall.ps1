$packageName = 'windowdetective'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://sourceforge.net/projects/windowdetective/files/release-3.2.1/Window-Detective-3.2.1-setup.exe/download'
$checksum = 'ecbc6c2036be4242b5bebd447f2d8e4cef2600b0'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"