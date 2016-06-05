$packageName = 'freenet'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://downloads.freenetproject.org/alpha/installer/FreenetInstaller-1474.exe'
$checksum = 'ebfefe1928cef2f103ba989be984eb5ee5858a4b512f601c12410427b8c98335'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"