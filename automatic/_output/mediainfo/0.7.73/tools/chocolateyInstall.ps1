$packageName = 'mediainfo'
$installerType = 'exe'
# misuse 64-bit variable in auto pkg to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = 'http://sourceforge.net/projects/mediainfo/files/binary/mediainfo-gui/0.7.73/MediaInfo_GUI_0.7.73_Windows.exe/download'
$checksum = '70cb7fc9867fe7f505f3ddfd113b9577b67dce39'
$checksumType = 'sha1'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -Url "$url" -SilentArgs "$silentArgs" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"