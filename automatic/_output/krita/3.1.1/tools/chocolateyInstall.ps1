$packageName = 'krita'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://download.kde.org/stable/krita/3.1.1/krita-3.1.1-x86-setup.exe'
$checksum = 'ea5179427602d7b2018894c093a9b9e84bfd8ca5d7f559efbdd50f52f1ce93d4'
$checksumType = 'sha256'
$url64 = 'http://download.kde.org/stable/krita/3.1.1/krita-3.1.1-x64-setup.exe'
$checksum64 = 'd761d2692c0d7275b53e85f8307e65d93383fabf3ed8aef69abf626de3bf21b6'
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