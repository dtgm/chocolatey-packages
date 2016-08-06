$packageName = 'meld'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://download.gnome.org/binaries/win32/meld/3.16/Meld-3.16.2-win32.msi'
$checksum = ''
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName $packageName `
                          -FileType $installerType `
                          -SilentArgs $silentArgs `
                          -Url $url `
                          -ValidExitCodes $validExitCodes `
                          -Checksum $checksum `
                          -ChecksumType $checksumType