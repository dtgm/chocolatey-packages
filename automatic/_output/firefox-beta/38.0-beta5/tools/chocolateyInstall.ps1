$packageName = 'firefox-beta'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/releases/38.0b5/win32/en-US/Firefox Setup 38.0b5.exe'
$url64 = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/releases/38.0b5/win64/en-US/Firefox%20Setup%2038.0b5.exe'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes