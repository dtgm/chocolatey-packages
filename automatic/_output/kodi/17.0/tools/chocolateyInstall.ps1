$packageName = 'kodi'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://mirrors.kodi.tv/releases/win32/kodi-17.0-Krypton_beta6.exe'
$checksum = 'bf504fcbe9c2ac702ec9681caf23ebbfbb36d0695eae69eaebec99b9fc081759'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"