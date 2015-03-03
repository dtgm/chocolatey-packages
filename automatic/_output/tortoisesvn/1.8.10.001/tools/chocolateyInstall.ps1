$packageName = 'tortoisesvn'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart ADDLOCAL=ALL'
$urlArray = @('http://sourceforge.net/projects/tortoisesvn/files/1.8.10/Application/TortoiseSVN-1.8.10.26129-win32-svn-1.8.11.msi', 'http://sourceforge.net/projects/tortoisesvn/files/1.8.10/Application/TortoiseSVN-1.8.10.26129-x64-svn-1.8.11.msi')
$url = $urlArray[0]
$checksum = '6050a321e17e11178036d62ca21e837ae287467c'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '4597c6f00b0824d3a69f3879bb5fd420a3a8cbef'
$checksumType64 = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -Url "$url" -Url64bit "$url64" -SilentArgs "$silentArgs" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"