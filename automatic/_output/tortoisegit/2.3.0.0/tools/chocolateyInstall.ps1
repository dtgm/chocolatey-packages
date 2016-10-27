$packageName = 'tortoisegit'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart REBOOT=ReallySuppress'
$url = 'https://download.tortoisegit.org/tgit/2.3.0.0/TortoiseGit-2.3.0.0-32bit.msi'
$checksum = 'bf0bc5a9819f1db1218aa693ef3f09a64c76672d0bda7a79d843b03c46d30482'
$checksumType = 'sha256'
$url64 = 'https://download.tortoisegit.org/tgit/2.3.0.0/TortoiseGit-2.3.0.0-64bit.msi'
$checksum64 = '6cf1e4340cf8ba9d46cef6ce28be44709dcc6d3cd47ac5674d3cede56b86ee4d'
$checksumType64 = 'sha256'
$validExitCodes = @(0,3010)

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