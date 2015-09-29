$packageName = 'firefox-dev'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/2015/08/2015-08-13-00-40-05-mozilla-aurora/firefox-42.0a2.en-US.win32.installer.exe'
$checksum = '82c48dca817a152ab3bd67d1aa70501f23044539'
$checksumType = 'sha1'
$url64 = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/2015/08/2015-08-13-00-40-05-mozilla-aurora/firefox-42.0a2.en-US.win64.installer.exe'
$checksum64 = 'cc02625f9544fb2f31124d768cb2102d4ef2a1a8'
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