$packageName = 'tortoisesvn'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart ADDLOCAL=ALL'
$urlArray = @('https://sourceforge.net/projects/tortoisesvn/files/1.8.11/Application/TortoiseSVN-1.8.11.26392-win32-svn-1.8.13.msi', 'https://sourceforge.net/projects/tortoisesvn/files/1.8.11/Application/TortoiseSVN-1.8.11.26392-x64-svn-1.8.13.msi')
$url = $urlArray[0]
$checksum = '9587b9bdbfd3763d1b65311701621cb0964d1476'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '953b91d55099e686b058fa0c8ae20fe2d8c875fe'
$checksumType64 = 'sha1'
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