$packageName = 'clamwin'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://sourceforge.net/projects/clamwin/files/clamwin/0.99.1/clamwin-0.99.1-setup.exe'
$checksum = '0261faa23e363cae34525bcc33271c0dae2796b4'
$checksumType = 'sha1'
$validExitCodes = @(0)  # exit codes http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"