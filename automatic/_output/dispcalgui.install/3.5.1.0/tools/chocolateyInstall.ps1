$packageName = 'dispcalgui.install'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://sourceforge.net/projects/dispcalgui/files/release/3.5.1.0/DisplayCAL-3.5.1.0-Setup.exe/download'
$checksum = 'b1623539c063124219335bff6b127f802ccc8b9c089aa532a2ca6f6b2c3f6ec9'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"