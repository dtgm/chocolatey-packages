$packageName = 'meld'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://download.gnome.org/binaries/win32/meld/3.14/Meld-3.14.2-win32.msi'
$checksum = '31dd509e27294db4062dd15dbaf61e0f283f964a'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"