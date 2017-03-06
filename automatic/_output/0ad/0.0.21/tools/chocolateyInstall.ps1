$packageName = '0ad'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://releases.wildfiregames.com/0ad-0.0.21-alpha-win32.exe'
$checksum = 'ea19276885fb0f12cae128d3fc2466cbd8036cd03cbec7ea428e9c72bcd7c16d'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"