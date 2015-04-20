$packageName = 'bacula'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = '@('https://sourceforge.net/projects/bacula/files/Win32_64/5.2.10/bacula-win32-5.2.10.exe/download', 'https://sourceforge.net/projects/bacula/files/Win32_64/5.2.10/bacula-win64-5.2.10.exe/download''
$checksum = '{checksum}'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"