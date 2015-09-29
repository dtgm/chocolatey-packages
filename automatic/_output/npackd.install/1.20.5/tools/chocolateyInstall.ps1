$packageName = 'npackd.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$urlArray = @('http://sourceforge.net/projects/npackd/files/com.googlecode.windows-package-manager.Npackd/Npackd32-1.20.5.msi/download', 'http://sourceforge.net/projects/npackd/files/com.googlecode.windows-package-manager.Npackd64/Npackd64-1.20.5.msi/download')
$url = $urlArray[0]
$checksum = '5bea9c9b4b756e635d98ef6babaab5a5073b120b'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '217c0dd81b96c296319a5fbc239bc6b80f4ac483'
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