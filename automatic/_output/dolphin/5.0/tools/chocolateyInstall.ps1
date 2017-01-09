$packageName = 'dolphin'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://dl-mirror.dolphin-emu.org/5.0/dolphin-x64-5.0.exe'
$checksum = 'e1b3ae8fc890c6588e5656f77ef2747ae7ddfc90b6530b240c0c5b9d0ab3ce8c'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"