$packageName = 'gpg4win'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://files.gpg4win.org/gpg4win-2.2.6.exe'
$checksum = 'efb8c9d4f209c9d12bd0e8a2068e389302cd58ee'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"