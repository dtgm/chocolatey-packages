$packageName = 'peazip.install'
$urlArray = @('http://sourceforge.net/projects/peazip/files/5.6.0/peazip-5.6.0.WINDOWS.exe/download', 'http://sourceforge.net/projects/peazip/files/5.6.0/peazip-5.6.0.WIN64.exe/download')
$url = $urlArray[0]
$checksum = '65eb6dacdecfe691fb8bf496c3b5fd9baa3a6427'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'de8a54e0866acfe6e2275a1dc2ace52c574ebb63'
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