$packageName = 'kodi'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://mirrors.kodi.tv/releases/win32/kodi-15.0-Isengard.exe'
$checksum = 'c3563fecef2aa3829e741e9e6a542f68543c306e'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"