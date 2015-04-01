$packageName = 'firefox-dev'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-39.0a2.en-US.win32.installer.exe'
$url64 = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-39.0a2.en-US.win64.installer.exe'
$validExitCodes = @(0)
$checksum = '1ae4d0a6b1159140875c89f0e87b52b0e0ea900a'
$checksumType = 'sha1'
$checksum64 = '4e5a3efe6b0fa8c7464f2ecde4e107a3ecbcda7c'
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