$packageName = 'kodi'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://mirrors.xbmc.org/releases/win32/kodi-14.1-Helix.exe'
$checksum = '554906c18bc18d2924bfd91a84ac58d9bb477870'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"