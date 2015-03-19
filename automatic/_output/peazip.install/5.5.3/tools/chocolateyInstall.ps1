$packageName = 'peazip.install'
$installerType = 'exe'
$url = 'http://www.peazip.org/downloads/peazip-5.5.3.WINDOWS.exe'
$checksum = '2659b7952b21b18e8a00457efb8d452391e40875'
$checksumType = 'sha1'
$url64 = 'http://www.peazip.org/downloads/peazip-5.5.3.WIN64.exe'
$checksum64 = '8e5ce1889f50b8130cf63da04fe5e48ce5aa5c1a'
$checksumType64 = 'sha1'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"