$packageName = 'dropit.install'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://sourceforge.net/projects/dropit/files/DropIt/v8.5/DropIt_v8.5_Setup.exe/download'
$checksum = '8f8f6292f52a963cfd441c8089a8f6d064a606d5980db49f1396b73713a4b260'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"