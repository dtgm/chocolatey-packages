$packageName = 'firefox-nightly'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-58.0a1.en-US.win32.installer.exe'
$checksum = '5b9c9622ea5b18faad0e086b8e1db27ac0968aa7b45ae54aef25143ff26a842a'
$checksumType = 'sha256'
$url64 = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-58.0a1.en-US.win64.installer.exe'
$checksum64 = '1bad87882605ebcf419881eef5bab5faa4f6c7d9422cb95b5a6bb9184a4673b7'
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