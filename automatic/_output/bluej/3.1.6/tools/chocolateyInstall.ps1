$packageName = 'bluej'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://www.bluej.org/download/files/bluej-316.msi'
$checksum = '8fdb36ce95f84ccfc7d24a63be1038702922226a'
$checksumType = 'sha1'
$validExitCodes = @(0,3010)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"