$packageName = 'dispcalgui.install'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://sourceforge.net/projects/dispcalgui/files/release/3.5.3.0/DisplayCAL-3.5.3.0-Setup.exe/download'
$checksum = '956dd497d94d9ec5568dd719bccaae7b4d47f37d371c3cffba58fb2b3149a749'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"