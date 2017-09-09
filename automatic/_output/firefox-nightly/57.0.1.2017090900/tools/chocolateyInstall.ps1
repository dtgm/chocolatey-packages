$packageName = 'firefox-nightly'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-57.0a1.en-US.win32.installer.exe'
$checksum = '91eca6df109c258019b7c24a05c6ddb8618052ad03d0a0b22c86f1ab4e92453d'
$checksumType = 'sha256'
$url64 = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-57.0a1.en-US.win64.installer.exe'
$checksum64 = 'd755a881f4e2dc3732416501237de87f66085a357abe46e5d3981e1ff92cefca'
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