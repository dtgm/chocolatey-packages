$packageName = 'firefox-dev'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-38.0a2.en-US.win32.installer.exe'
$validExitCodes = @(0)
$checksum = 'e80dcdf109046524c00029752fe11b4c4fdeb5a4'
$checksumType = 'sha1'
$url64 = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-38.0a2.en-US.win64.installer.exe'
$checksum64 = 'e80dcdf109046524c00029752fe11b4c4fdeb5a4'
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