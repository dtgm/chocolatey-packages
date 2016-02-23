$packageName = 'bluej'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://www.bluej.org/download/files/bluej-317.msi'
$checksum = '8dd9b1f92522ed72ad877055f6b06039ac03b0cd'
$checksumType = 'sha1'
$validExitCodes = @(0,3010)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"