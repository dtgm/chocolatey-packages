$packageName = 'tortoisegit'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart REBOOT=ReallySuppress'
$url = 'https://download.tortoisegit.org/tgit/2.2.0.0/TortoiseGit-2.2.0.0-32bit.msi'
$checksum = '0a17c1795a3d9eb544c490ba1e6f0334427e285001c761f3dde138bf43bced19'
$checksumType = 'sha256'
$url64 = 'https://download.tortoisegit.org/tgit/2.2.0.0/TortoiseGit-2.2.0.0-64bit.msi'
$checksum64 = 'ae707c7448a8921dc5acb34764a9731ec0fee897e9e6a49475342869e9d7bc50'
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