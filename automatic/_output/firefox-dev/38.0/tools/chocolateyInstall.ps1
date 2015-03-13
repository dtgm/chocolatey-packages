$packageName = 'firefox-dev'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-38.0a2.en-US.win32.installer.exe'
$url64 = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-38.0a2.en-US.win64.installer.exe'
$validExitCodes = @(0)
$checksum = '5a5eaeb2d8236ded7f8e772d11019c3480b5e928'
$checksumType = 'sha1'
$checksum64 = '6aedcd5c169d5cc7ace625b9d8526682f6c12d6c'
$checksumType64 = 'sha1'

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