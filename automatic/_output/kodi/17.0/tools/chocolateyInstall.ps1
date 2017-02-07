$packageName = 'kodi'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://mirrors.kodi.tv/releases/win32/kodi-17.0-Krypton.exe'
$checksum = 'd20c663f4655a38732646c1f1906c2bf79155ec05a3cb1ef638e604941bc3196'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"