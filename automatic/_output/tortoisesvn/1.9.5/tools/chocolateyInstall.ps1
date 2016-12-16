$packageName = 'tortoisesvn'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart ADDLOCAL=ALL'
$urlArray = @('https://sourceforge.net/projects/tortoisesvn/files/1.9.5/Application/TortoiseSVN-1.9.5.27581-win32-svn-1.9.5.msi', 'https://sourceforge.net/projects/tortoisesvn/files/1.9.5/Application/TortoiseSVN-1.9.5.27581-x64-svn-1.9.5.msi')
$url = $urlArray[0]
$checksum = 'c2a74ecfbe1260a950a0ed42056e665cabfd19bac3c34d93ff83ba8a3f558af2'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = 'dbb3e538fde2fac56781b4893ae6ab45b6cb331d2a3888ed4308a5ec47e85468'
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
