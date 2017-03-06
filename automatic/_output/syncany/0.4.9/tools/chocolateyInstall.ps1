$packageName = 'syncany'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://get.syncany.org/dist/releases/syncany-0.4.9-alpha~x86.exe'
$checksum = '962b9516dfa8e4ce2cc9b9cb971ebf2180efa95ae686e59a5d6b2b69c1576f1e'
$checksumType = 'sha256'
$url64 = 'https://get.syncany.org/dist/releases/syncany-0.4.9-alpha~x86_64.exe'
$checksum64 = '327ae91473d361109bc822f994161fd01f21b1a0aa48b14f4d01bb241529d920'
$checksumType64 = 'sha256'
$validExitCodes = @(0)

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