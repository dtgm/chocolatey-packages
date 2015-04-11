$packageName = 'primecoin'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/primecoin/files/0.1.2/primecoin-0.1.2-win32-setup.exe/download'
$checksum = '959aded69d3d010b970906cdfb0993146811570a'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"