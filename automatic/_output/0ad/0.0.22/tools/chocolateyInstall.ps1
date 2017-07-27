$packageName = '0ad'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://releases.wildfiregames.com/0ad-0.0.22-alpha-win32.exe'
$checksum = '78e4d1f4ca2885a903454dbddc629f36d28da2a81be80534c1589425a83eac9d'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"