$packageName = 'bluej'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://www.bluej.org/download/files/bluej-315.msi'
$checksum = 'bd2b9c5a6576bc0369c593a4aa2b5dc901e92e91'
$checksumType = 'sha1'
$validExitCodes = @(0,3010)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"