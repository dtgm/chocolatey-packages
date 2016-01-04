$packageName = 'peazip.install'
$urlArray = @('http://sourceforge.net/projects/peazip/files/5.9.1/peazip-5.9.1.WINDOWS.exe', 'http://sourceforge.net/projects/peazip/files/5.9.1/peazip-5.9.1.WIN64.exe')
$url = $urlArray[0]
$checksum = '42c6464825f2ea47028f99f750fdd919026a85ca'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '1f58bcbec36f7bcfad71501ab9ba3987f0e46066'
$checksumType64 = 'sha1'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

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