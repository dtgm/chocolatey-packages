$packageName = 'superantispyware'
$installerType = 'exe'
$silentArgs = '/SILENT'
$url = 'http://cdn.superantispyware.com/SUPERAntiSpyware.exe'
$checksum = '8deeb1ebd29f7ac552ebed3895b0f92eecfe4340'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"