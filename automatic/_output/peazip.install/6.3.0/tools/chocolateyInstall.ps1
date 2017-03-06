$packageName = 'peazip.install'
$urlArray = @('http://www.peazip.org/downloads/peazip-6.3.0.WINDOWS.exe', 'http://www.peazip.org/downloads/peazip-6.3.0.WIN64.exe')
$url = $urlArray[0]
$checksum = 'c4c1a1dd5729586853d38c77926f0c50a5254a9a9fdbb32b9320fdec4b6fdab9'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '387bcab48e1dc091f8d037e6dd1bc6fcfeaf67c26603ec5838554b232f362e79'
$checksumType64 = 'sha256'
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