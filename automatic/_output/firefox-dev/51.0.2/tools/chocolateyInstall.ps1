$packageName = 'firefox-dev'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-aurora/firefox-51.0a2.en-US.win32.installer.exe'
$checksum = 'fe3c1ce9b8b03d6097b1aee6b8a81ba7a6f0625dd7a73cf7bb00524bf5bf7658'
$checksumType = 'sha256'
$url64 = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-aurora/firefox-51.0a2.en-US.win64.installer.exe'
$checksum64 = 'fb21b89a526a716b6e8c3617a5e7e89a0cb9d0ff113e6f11f5e04812f2782c10'
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