$packageName = 'xiphqt'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://downloads.xiph.org/releases/xiph-qt/xiph-qt-win32-0.1.5.exe'
$checksum = '697eb065a3e8f5b8f5b3cf5be2afa33f'
$checksumType = 'md5'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" 