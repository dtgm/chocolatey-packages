$packageName = 'windowdetective'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://sourceforge.net/projects/windowdetective/files/release-3.3.0/Window-Detective-3.3.0-setup.exe'
$checksum = 'bd1bdd2a2a9cf8d400a4b10291da729f74bde0bffe8d63d0dbfece9752681ae4'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"