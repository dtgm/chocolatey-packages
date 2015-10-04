$packageName = 'bacula'
$installerType = 'exe'
$silentArgs = '/S'
$urlArray = @('https://sourceforge.net/projects/bacula/files/Win32_64/5.2.10/bacula-win32-5.2.10.exe/download', 'https://sourceforge.net/projects/bacula/files/Win32_64/5.2.10/bacula-win64-5.2.10.exe/download'
$url = $urlArray[0]
$checksum = 'a219763afca7ba224393c1e9c6cb9613349168f0'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '6f8fa4328a0cdc06180f7f1aed386c8eac2d9aff'
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