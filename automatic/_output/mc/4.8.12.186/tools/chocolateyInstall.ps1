$packageName = 'mc'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
# hack to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = 'http://sourceforge.net/projects/mcwin32/files/mcwin32-build4812186-setup.exe/download'
$checksum = '4efabea80194e2f0a854264b76bf91de4a48dd40'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -Url "$url" -SilentArgs "$silentArgs" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"