$packageName = 'peazip.install'
$urlArray = @('https://github.com/giorgiotani/PeaZip/releases/download/5.8.1/peazip-5.8.1.WINDOWS.exe', 'https://github.com/giorgiotani/PeaZip/releases/download/5.8.1/peazip-5.8.1.WIN64.exe')
$url = $urlArray[0]
$checksum = '5e34de2e83307fb3674fb09d24276866aaa994c9'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'a5ed41a09404e4bd649eacd40c23ec0865d55487'
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