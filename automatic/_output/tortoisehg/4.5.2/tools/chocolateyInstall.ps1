$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://bitbucket.org/tortoisehg/files/downloads/tortoisehg-4.5.2-x86.msi'
$checksum = '86961cf8aba23fd50ecf6b6649d5ce260358eda8a432be2e3108eba612e7793a'
$checksumType = 'sha256'
$url64 = 'https://bitbucket.org/tortoisehg/files/downloads/tortoisehg-4.5.2-x64.msi'
$checksum64 = 'b31142465d61030ea46079b985d50920993cb47342fddbba9edd5fd0a4a7fafa'
$checksumType64 = 'sha256'
$validExitCodes = @(0,3010)

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