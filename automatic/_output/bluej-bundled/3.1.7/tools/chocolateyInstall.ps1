$packageName = 'bluej-bundled'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://www.bluej.org/download/files/bluej-bundled-317.msi'
$checksum = '10cadf33ff7c5b47de616f7fcf99587c4a325075'
$checksumType = 'sha1'
$validExitCodes = @(0,3010)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"