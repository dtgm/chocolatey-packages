$packageName = 'texniccenter'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$urlArray = @('http://sourceforge.net/projects/texniccenter/files/TeXnicCenter/2.02%20Stable/TXCSetup_2.02Stable_Win32.exe/download', 'http://sourceforge.net/projects/texniccenter/files/TeXnicCenter/2.02%20Stable/TXCSetup_2.02Stable_x64.exe/download')
$url = $urlArray[0]
$checksum = '7400624feb2a89fba8e00b96d9a8583984a9ceac'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'ea2d050fb14caa5ff49bc4bdb901e97a3045e9a8'
$checksumType64 = 'sha1'
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