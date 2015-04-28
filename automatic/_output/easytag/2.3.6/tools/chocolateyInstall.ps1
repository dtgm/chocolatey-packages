$packageName = 'easytag'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://download.gnome.org/binaries/win32/easytag/2.3/easytag-2.3.6-setup.exe'
$checksum = '1ad81c53581eca51b3470bb5a8e8b23a889a4fa8'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"