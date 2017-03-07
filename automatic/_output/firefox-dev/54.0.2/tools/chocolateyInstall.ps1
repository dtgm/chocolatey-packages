$packageName = 'firefox-dev'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-aurora/firefox-54.0a2.en-US.win32.installer.exe'
$checksum = 'bd44025f545a6a4668ebf56ad768a003d8f39fe73a45f2ed53ee74aa1883d10d'
$checksumType = 'sha256'
$url64 = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-aurora/firefox-54.0a2.en-US.win64.installer.exe'
$checksum64 = '08152bbb57488d1c5d82a8e7dc2541a1bb2a76251bb85cf50e331cba611a4222'
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