$packageName = 'firefox-dev'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/2015/05/2015-05-19-00-40-02-mozilla-aurora/firefox-40.0a2.en-US.win32.installer.exe'
$checksum = '64acc3f1dbadc898ec7d03356839b69396f55b06'
$checksumType = 'sha1'
$url64 = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/2015/05/2015-05-19-00-40-02-mozilla-aurora/firefox-40.0a2.en-US.win64.installer.exe'
$checksum64 = '02db6db828474d22c62a962db87f51a15265205c'
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