$packageName = 'clamwin'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://sourceforge.net/projects/clamwin/files/clamwin/0.99.4/clamwin-0.99.4-setup.exe/download'
$checksum = 'c6f272afdb48db7d5600a1934d2c3b028c4db76fe96d3d8681383f6a69a33722'
$checksumType = 'sha1'
$validExitCodes = @(0)  # exit codes http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"