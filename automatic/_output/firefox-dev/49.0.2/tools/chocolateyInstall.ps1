$packageName = 'firefox-dev'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-aurora/firefox-49.0a2.en-US.win32.installer.exe'
$checksum = 'da363ad07f37a7418ced6dbf815e9ff762958adf07531d734333aab7576babb4'
$checksumType = 'sha256'
$url64 = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-aurora/firefox-49.0a2.en-US.win64.installer.exe'
$checksum64 = '2e818494a7196a87948e5533ca8eda95fa69110455cc45201fceb3ee3b2ca0ab'
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