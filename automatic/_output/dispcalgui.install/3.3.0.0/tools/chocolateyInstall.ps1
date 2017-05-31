$packageName = 'dispcalgui.install'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://sourceforge.net/projects/dispcalgui/files/release/3.3.0.0/DisplayCAL-3.3.0.0-Setup.exe/download'
$checksum = '7d05aa7cbcc9c0fafd2ffaead97c3e9306d036d37e4c58b345c48a0945a7cd3a'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"