$packageName = 'firefox-dev'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/2015/10/2015-10-03-00-40-14-mozilla-aurora/firefox-43.0a2.en-US.win32.installer.exe'
$checksum = '634986c68c95e7b7e98f54819c552e278d88b1dc'
$checksumType = 'sha1'
$url64 = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/2015/10/2015-10-03-00-40-14-mozilla-aurora/firefox-43.0a2.en-US.win64.installer.exe'
$checksum64 = '8f55079a7dedf9ff9d3fc4ee45feaa709c2a5e23'
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