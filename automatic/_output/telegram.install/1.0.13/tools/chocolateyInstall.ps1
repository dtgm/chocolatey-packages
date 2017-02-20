$packageName = 'telegram.install'
$installerType = 'exe'
$url = 'https://updates.tdesktop.com/tsetup/tsetup.1.0.13.exe'
$checksum = '389fc334e0e6cf59dcb0eadf10e1b881de19144d242c029e7d21dba8058389d7'
$checksumType = 'sha256'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) 

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"