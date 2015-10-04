$packageName = 'peazip.install'
$urlArray = @('https://github.com/giorgiotani/PeaZip/releases/download/5.7.2/peazip-5.7.2.WINDOWS.exe', 'https://github.com/giorgiotani/PeaZip/releases/download/5.7.2/peazip-5.7.2.WIN64.exe')
$url = $urlArray[0]
$checksum = 'cd8929b399d10cc5c591e442e7c77da210fd0e53'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '3b288ef7129c7755d00fbcdab1ab9066196e30e8'
$checksumType64 = 'sha1'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"