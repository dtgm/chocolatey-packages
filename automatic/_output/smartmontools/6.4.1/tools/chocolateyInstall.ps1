$packageName = 'smartmontools'
$installerType = 'exe'	
$silentArgs = '/S'
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$urlArray = @('http://sourceforge.net/projects/smartmontools/files/smartmontools/6.4/smartmontools-6.4-1.win32-setup.exe/download', 'http://sourceforge.net/projects/smartmontools/files/smartmontools/6.4/smartmontools-6.4-1.win64-setup.exe/download')
$url = $urlArray[0]
$checksum = '5ba5a872745c915d7bd31eb4e11943853dbe04b1'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes "$validExitCodes" -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"
