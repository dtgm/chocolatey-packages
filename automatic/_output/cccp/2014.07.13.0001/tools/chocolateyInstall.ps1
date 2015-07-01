$packageName = 'cccp'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://japland.org/cccp/Combined-Community-Codec-Pack-2014-07-13.exe'
$checksum = 'ac7a78e6abcbb42c9a7be51e691c0ae805eb227e'
$checksumType = 'sha1'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"