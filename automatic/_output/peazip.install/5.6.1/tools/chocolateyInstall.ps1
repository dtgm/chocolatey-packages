$packageName = 'peazip.install'
$urlArray = @('http://sourceforge.net/projects/peazip/files/5.6.1/peazip-5.6.1.WINDOWS.exe/download', 'http://sourceforge.net/projects/peazip/files/5.6.1/peazip-5.6.1.WIN64.exe/download')
$url = $urlArray[0]
$checksum = 'cb33fa31cf8d10eb806d179cac69d42ca8f85fc5'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '5cc4c639963317638e61f13228d707a8e6d74132'
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