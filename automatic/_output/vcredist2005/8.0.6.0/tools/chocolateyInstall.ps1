$packageName = 'vcredist2005'
$installerType = 'exe'
$url = 'http://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x86.EXE'
$url64 = 'http://download.microsoft.com/download/8/B/4/8B42259F-5D70-43F4-AC2E-4B208FD8D66A/vcredist_x64.EXE'
$silentArgs = '/Q'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$checksum = 'b8fab0bb7f62a24ddfe77b19cd9a1451abd7b847'
$checksumType = 'sha1'
$checksumx64 = 'ee916012783024dac67fc606457377932c826f05'
$checksumTypex64 = 'sha1'
Install-ChocolateyPackage -packageName "$packageName" -fileType "$installerType" -url "$url" -url64bit "$url64" -silentArgs "$silentArgs" -validExitCodes $validExitCodes -checksum "$checksum" -checksumType "$checksumType" -checksum64 "$checksumx64" -checksumType64 "$checksumTypex64"