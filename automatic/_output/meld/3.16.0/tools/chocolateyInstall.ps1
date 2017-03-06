$packageName = 'meld'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://download.gnome.org/binaries/win32/meld/3.16/Meld-3.16.0-win32.msi'
$checksum = 'f8ce3672ff08148d9588fc0adbfebe36784d83f2a7545eedee1eb3d0dd14006f'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName $packageName `
                          -FileType $installerType `
                          -SilentArgs $silentArgs `
                          -Url $url `
                          -ValidExitCodes $validExitCodes `
                          -Checksum $checksum `
                          -ChecksumType $checksumType