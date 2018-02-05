$packageName = 'freeplane'
$installerType = 'exe'
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = 'http://sourceforge.net/projects/freeplane/files/freeplane%20stable/archive/1.6.13/Freeplane-Setup-1.6.13.exe/download'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)  #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$checksum = '46f186be055eafb1cf612c72daf6d33ca3b4870615c48cb00bb8c115322d4e81'
$checksumType = 'sha256'

Install-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -Url "$url" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
