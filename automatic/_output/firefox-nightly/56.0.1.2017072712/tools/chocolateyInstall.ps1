$packageName = 'firefox-nightly'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-56.0a1.en-US.win32.installer.exe'
$checksum = '011ff6ae7075c94769a1db9af1d0c8f7fa54d42bb644dae8f58966226d54dcd3'
$checksumType = 'sha256'
$url64 = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-56.0a1.en-US.win64.installer.exe'
$checksum64 = 'e7fd5856d90ab75ab58a7ab96476167f5e961462ff700db52ad9c415317ae676'
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