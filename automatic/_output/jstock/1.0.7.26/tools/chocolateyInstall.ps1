$packageName = 'jstock'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://github.com/yccheok/jstock/releases/download/release_1-0-7z/jstock-1.0.7z-setup.exe'
$checksum = 'a50768d619a2d023474533d9db11b25f19928020'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" -InstallerType "$installerType" -Url "$url" -SilentArgs "$silentArgs" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"