$packageName = 'komodo-edit'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://downloads.activestate.com/Komodo/releases/10.1.3/Komodo-Edit-10.1.3-17451.msi'
$checksum = 'b9a9a63e710af86f55e8766ad38f90b6'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"