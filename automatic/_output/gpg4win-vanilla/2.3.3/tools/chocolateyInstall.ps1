$packageName = 'gpg4win-vanilla'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://files.gpg4win.org/gpg4win-vanilla-2.3.3.exe'
$checksum = 'a105cc82d60a315a14a4f69ea783a83baa434e55'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"