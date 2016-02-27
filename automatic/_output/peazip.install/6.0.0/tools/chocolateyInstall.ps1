$packageName = 'peazip.install'
$urlArray = @('http://sourceforge.net/projects/peazip/files/6.0.0/peazip-6.0.0.WINDOWS.exe', 'http://sourceforge.net/projects/peazip/files/6.0.0/peazip-6.0.0.WIN64.exe')
$url = $urlArray[0]
$checksum = 'fb2aa6dc9c186d42748c0b1de937bf980cdedd9f'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '6e85cb9c6570debe3d833da647940ecb0e7409f0'
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