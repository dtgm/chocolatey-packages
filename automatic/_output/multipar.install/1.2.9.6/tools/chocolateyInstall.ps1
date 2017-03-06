$packageName = 'multipar.install'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://multipar.eu//download/archive/dl.php?fn=MultiPar1296_setup.exe'
$checksum = 'fd1a5c1ee17cf12a4f88165f9e88760584c7d175f2d33725011afc5f6a95c3aa'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"