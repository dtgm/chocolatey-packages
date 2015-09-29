$packageName = 'tortoisesvn'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart ADDLOCAL=ALL'
$urlArray = @('https://sourceforge.net/projects/tortoisesvn/files/1.9.0/Application/TortoiseSVN-1.9.0.26652-win32-svn-1.9.0.msi', 'https://sourceforge.net/projects/tortoisesvn/files/1.9.0/Application/TortoiseSVN-1.9.0.26652-x64-svn-1.9.0.msi')
$url = $urlArray[0]
$checksum = '051eaab13fdc14dff3283d9345c94b029de48bd5'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'e107fa7a5aacdbf0b36b220e2b75ab93a4332520'
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