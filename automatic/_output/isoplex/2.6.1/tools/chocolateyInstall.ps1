$packageName = 'isoplex'
$installerType = 'exe'
$silentArgs = '/exenoui /quiet /qn /norestart'
$url = 'http://isoplex.isohunt.to/files/IsoplexInstaller-2.6.1.exe'
$checksum = '21b1734f8f5934a10ca025037e4b0a5953fac2c6'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"