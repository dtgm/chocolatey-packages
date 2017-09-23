$packageName = 'firefox-nightly'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-58.0a1.en-US.win32.installer.exe'
$checksum = 'a8d1b94517d7c6e9eed9689a28efb9c717e90dfbb36e7a6598ac0130bcd72e66'
$checksumType = 'sha256'
$url64 = 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-58.0a1.en-US.win64.installer.exe'
$checksum64 = '95521d0606deb9d7a5ea25bc277e5b530d22ef8f3e350e4fdb36361d43892924'
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