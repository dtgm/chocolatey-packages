$packageName = 'psi.install'
$installerType = 'exe'
$silentArgs = '/S'
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$urlArray = @('http://sourceforge.net/projects/psi/files/Psi/0.15/psi-0.15-win32-setup.exe/download', 'http://sourceforge.net/projects/psi/files/Psi/0.15/psi-0.15-win64-setup.exe/download')
$url = $urlArray[0]
$checksum = 'a15caa1daf3deb3516eadd29272a596952f7f922'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"
