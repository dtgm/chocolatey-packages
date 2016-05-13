$packageName = 'tortoisegit'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart REBOOT=ReallySuppress'
$url = 'https://download.tortoisegit.org/tgit/2.1.0.0/TortoiseGit-2.1.0.0-32bit.msi'
$checksum = '2271b8ddb6344a9b76280e3db20ba3ffcdece480'
$checksumType = 'sha1'
$url64 = 'https://download.tortoisegit.org/tgit/2.1.0.0/TortoiseGit-2.1.0.0-64bit.msi'
$checksum64 = '4be11890b6e8bcd223778e3bcd9016dc7b5f4fd5'
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