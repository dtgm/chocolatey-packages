$packageName = 'firefox-nightly'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-55.0a1.en-US.win32.installer.exe'
$checksum = '6363cf1c63e19f7ce21e4389cbbb42938a75614c2dd0399f24d150f130e6085b'
$checksumType = 'sha256'
$url64 = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-55.0a1.en-US.win64.installer.exe'
$checksum64 = '0824068a4fdabdda1bf75792e88b3cc6d269c0686061583b49510fa0de3b22e0'
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