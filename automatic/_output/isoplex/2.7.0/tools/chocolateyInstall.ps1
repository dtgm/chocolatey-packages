$packageName = 'isoplex'
$installerType = 'exe'
$silentArgs = '/exenoui /quiet /qn /norestart'
$url = 'http://isoplex.isohunt.to/files/IsoplexInstaller-2.7.0.exe'
$checksum = '20244dec057c08b4b59dd432ca2fdafc24fd0ef1'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"