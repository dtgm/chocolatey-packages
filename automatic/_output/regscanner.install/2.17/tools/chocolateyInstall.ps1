$packageName = 'regscanner.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/regscanner_setup.exe'
$checksum = '632c33a720e363e783e4747f87ca4eb73c0d9df23d25079869cebf559d3170bd'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"