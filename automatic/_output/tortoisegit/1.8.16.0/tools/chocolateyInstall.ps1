$packageName = 'tortoisegit'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart REBOOT=ReallySuppress'
$url = 'https://download.tortoisegit.org/tgit/1.8.16.0/TortoiseGit-1.8.16.0-32bit.msi'
$checksum = 'ef5af7bb8eaa68bcb1dffd17b4cad23564169271'
$checksumType = 'sha1'
$url64 = 'https://download.tortoisegit.org/tgit/1.8.16.0/TortoiseGit-1.8.16.0-64bit.msi'
$checksum64 = 'e897bc9081a1bc9bb567011851d13deea90b12a1'
$checksumType64 = 'sha1'
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