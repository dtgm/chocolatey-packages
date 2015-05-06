$packageName = 'psi.install'
$installerType = 'exe'
$silentArgs = '/S'
$urlArray = @('http://sourceforge.net/projects/psi/files/Psi/0.15/psi-0.15-win32-setup.exe/download', 'http://sourceforge.net/projects/psi/files/Psi/0.15/psi-0.15-win64-setup.exe/download')
$url = $urlArray[0]
$checksum = 'a15caa1daf3deb3516eadd29272a596952f7f922'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'b959562f9fb6be45057be7563bd4ad81b2109d68'
$checksumType64 = 'sha1'
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