$packageName = 'firefox-dev'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-aurora/firefox-53.0a2.en-US.win32.installer.exe'
$checksum = 'b2c6730ee3cc1fdda246406896311ccd7f49d3f7ac1fb7c9e7c95a90b06760a2'
$checksumType = 'sha256'
$url64 = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-aurora/firefox-53.0a2.en-US.win64.installer.exe'
$checksum64 = '0542356cb168415ba7dbcfe71a63ac1856a329510be169b60e2b5eabdccb36cc'
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