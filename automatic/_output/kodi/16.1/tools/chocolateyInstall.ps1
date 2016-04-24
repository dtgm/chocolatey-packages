$packageName = 'kodi'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://mirrors.kodi.tv/releases/win32/kodi-16.1-Jarvis.exe'
$checksum = 'e55e344279a89eaef698efb0686e124b63e66616'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"