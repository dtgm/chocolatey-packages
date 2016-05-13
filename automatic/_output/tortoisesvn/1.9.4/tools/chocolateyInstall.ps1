$packageName = 'tortoisesvn'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart ADDLOCAL=ALL'
$urlArray = @('https://sourceforge.net/projects/tortoisesvn/files/1.9.4/Application/TortoiseSVN-1.9.4.27285-win32-svn-1.9.4.msi', 'https://sourceforge.net/projects/tortoisesvn/files/1.9.4/Application/TortoiseSVN-1.9.4.27285-x64-svn-1.9.4.msi')
$url = $urlArray[0]
$checksum = '3bb899df3606c6005c0be224134b14c39489ffef'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '441cb4b3907f5ac79899eca48967377f5f27b71c'
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
