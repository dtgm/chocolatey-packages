$packageName = 'tortoisegit'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart REBOOT=ReallySuppress'
$url = 'https://download.tortoisegit.org/tgit/2.0.0.0/TortoiseGit-2.0.0.0-32bit.msi'
$checksum = '04f5bcc56ddf284a9b5daa79251b8a03998652fc'
$checksumType = 'sha1'
$url64 = 'https://download.tortoisegit.org/tgit/2.0.0.0/TortoiseGit-2.0.0.0-64bit.msi'
$checksum64 = '481bab833bc36a57810188e1861dd3390fae45fe'
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