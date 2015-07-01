$packageName = 'firefox-dev'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/2015/07/2015-07-01-00-40-07-mozilla-aurora/firefox-41.0a2.en-US.win32.installer.exe'
$checksum = '41f25dc77d3a65e0ac00a27de1a5190ce1805bb2'
$checksumType = 'sha1'
$url64 = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/2015/07/2015-07-01-00-40-07-mozilla-aurora/firefox-41.0a2.en-US.win64.installer.exe'
$checksum64 = '8c321b4144b9f8a6552e58c6bdf07f8199268527'
$checksumType64 = 'sha1'
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