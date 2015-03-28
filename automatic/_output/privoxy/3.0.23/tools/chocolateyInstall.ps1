$packageName = 'privoxy'
$packageVersion = '3.0.23'
$installerType = 'exe'	
$silentArgs = '/S'
# misuse 64-bit variable in auto pkg to overcome limitations of Ketarin/chocopkgup when using repos like sf.net
$url = 'http://sourceforge.net/projects/ijbswa/files/Win32/3.0.23 (stable)/privoxy_setup_3_0_23.exe'
$checksum = 'cbcaf16aedcf231c866bfad4e8b57488bbec12be'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType"
