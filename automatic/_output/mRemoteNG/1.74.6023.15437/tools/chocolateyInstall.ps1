$packageName = 'mRemoteNG'
$installerType = 'exe'
$url  = 'http://downloads.mremoteng.org/mRemoteNG-Installer-1.72.exe'
$checksum = '{checksum}'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -Url "$url" -SilentArgs "$silentArgs" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
