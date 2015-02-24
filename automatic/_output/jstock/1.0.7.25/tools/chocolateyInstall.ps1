$packageName = 'jstock'
$installerType = 'exe'	
$silentArgs = '/S'
$url = 'http://github.com/yccheok/jstock/releases/download/release_1-0-7y/jstock-1.0.7y-setup.exe'
$checksum = 'faf5c95d916cbf3eaa26cddd36180574bf71ad74'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" -InstallerType "$installerType" -Url "$url" -SilentArgs "$silentArgs" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"