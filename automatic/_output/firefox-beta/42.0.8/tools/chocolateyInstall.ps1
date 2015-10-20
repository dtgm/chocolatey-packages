$packageName = 'firefox-beta'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/releases/42.0b8/win32/en-US/Firefox Setup 42.0b8.exe'
$url64 = 'https://ftp.mozilla.org/pub/mozilla.org/firefox/releases/42.0b8/win64/en-US/Firefox%20Setup%2042.0b8.exe'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes