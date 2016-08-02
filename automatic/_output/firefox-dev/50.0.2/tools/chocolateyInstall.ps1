$packageName = 'firefox-dev'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-aurora/firefox-50.0a2.en-US.win32.installer.exe'
$checksum = 'd4d59cd23fad35c2b8a2af697cf9e7a1abb3f2b5fe69bab4df21faba620dddf2'
$checksumType = 'sha256'
$url64 = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-aurora/firefox-50.0a2.en-US.win64.installer.exe'
$checksum64 = '9df48748d25df584e4ba12af1e18171f25710063c72b10d0e89c37f5e2348c7a'
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