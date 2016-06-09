$packageName = '{{PackageName}}'
$installerType = 'exe'
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = '{{DownloadUrlx64}}'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)  #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$checksum = '{{Checksum}}'
$checksumType = 'sha256'

Install-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -Url "$url" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
