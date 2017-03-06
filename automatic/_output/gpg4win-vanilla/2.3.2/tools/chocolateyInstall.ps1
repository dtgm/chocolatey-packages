$packageName = 'gpg4win-vanilla'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://files.gpg4win.org/gpg4win-vanilla-2.3.2.exe'
$checksum = '30863d2e1601334b9bb6fc370865d6568c8544e5'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"