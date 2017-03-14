$packageName = 'digikam'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.kde.org/stable/digikam/digiKam-5.5.0-01-Win32.exe'
$checksum = '1a8e4fc6eeff6fb7684986dd4afa10f535ea6590336d6d717561905cdd56d803'
$checksumType = 'sha256'
$url64 = 'http://download.kde.org/stable/digikam/digiKam-5.5.0-01-Win64.exe'
$checksum64 = 'c0c97bf790360e40464bffebbfcfa117dbc05a9f41b1421bc6d3dcca65b9797e'
$checksumType64 = 'sha256'
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