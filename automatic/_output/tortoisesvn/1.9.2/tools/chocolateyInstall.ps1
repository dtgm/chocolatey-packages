$packageName = 'tortoisesvn'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart ADDLOCAL=ALL'
$urlArray = @('https://sourceforge.net/projects/tortoisesvn/files/1.9.2/Application/TortoiseSVN-1.9.2.26806-win32-svn-1.9.2.msi', 'https://sourceforge.net/projects/tortoisesvn/files/1.9.2/Application/TortoiseSVN-1.9.2.26806-x64-svn-1.9.2.msi')
$url = $urlArray[0]
$checksum = 'c8e42341e4aedeb20a7537bb80e3dec76cf26eef'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'd390d15f29aa9ad3abcb758e76d3b3ece8a48b0f'
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
