$packageName = 'gtk-runtime'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://downloads.sourceforge.net/gtk-win/gtk2-runtime-2.24.10-2012-10-10-ash.exe?download'
$validExitCodes = @(0)
$checksum = 'afd74fbc35743a5528f07f21837978e10c078965'
$checksumType = 'sha1'
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" 