$packageName = 'clamwin'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://sourceforge.net/projects/clamwin/files/clamwin/0.98.7/clamwin-0.98.7-setup.exe/download'
$checksum = '63e0b58d81cbc65fd6c9036034c83b1b9b07e3dd'
$checksumType = 'sha1'
$validExitCodes = @(0)  # exit codes http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"