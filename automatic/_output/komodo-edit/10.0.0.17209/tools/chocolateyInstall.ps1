$packageName = 'komodo-edit'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://downloads.activestate.com/Komodo/releases/10.0.0/Komodo-Edit-10.0.0-17209.msi'
$checksum = 'b94433f5d67e5bfbd7bd5d615934da10'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"