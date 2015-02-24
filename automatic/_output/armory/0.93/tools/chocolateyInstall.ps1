$packageName = 'armory'
$packageVersion = '0.93'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://s3.amazonaws.com/bitcoinarmory-releases/armory_0.93_winAll.exe'
$checksum = '474ecb7f69a45250ba62be9c5e0087d34ec61566'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
