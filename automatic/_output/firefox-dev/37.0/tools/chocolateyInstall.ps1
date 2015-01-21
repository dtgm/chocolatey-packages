$packageName = 'firefox-dev'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-37.0a2.en-US.win32.installer.exe'
$url64 = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-aurora/firefox-37.0a2.en-US.win64-x86_64.installer.exe'
$validExitCodes = @(0)
$checksum = 'e5a326dbda0188c24a21b753b3d0653e90eeee0e'
$checksumType = 'sha1'
$checksum64 = 'f8f1133e733a371501fc1334655ff0a5bd33cc1c'
$checksumType64 = 'sha1'
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksum64" -checksumType64 "$checksumType64"