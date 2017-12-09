$packageName = 'freeplane'
$installerType = 'exe'
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = 'http://sourceforge.net/projects/freeplane/files/freeplane%20stable/archive/1.6.11/Freeplane-Setup-1.6.11.exe/download'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)  #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$checksum = '1f326dc549bd6221fffabc022a0f7e108250f5e7ed2ea7ed04d377120bf29ac3'
$checksumType = 'sha256'

Install-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -SilentArgs "$silentArgs" -Url "$url" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
