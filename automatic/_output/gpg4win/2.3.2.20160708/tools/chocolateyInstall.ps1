$packageName = 'gpg4win'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://files.gpg4win.org/gpg4win-2.3.2.exe'
$checksum = 'f19c6f7f287fb06dcfe0c20b83ee8f07e8be318c'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"