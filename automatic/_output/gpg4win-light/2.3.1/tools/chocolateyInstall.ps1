$packageName = 'gpg4win-light'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://files.gpg4win.org/gpg4win-light-2.3.1.exe'
$checksum = '3fb82bf910bc8a8c92af7cea354e6756b2520ee8'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"