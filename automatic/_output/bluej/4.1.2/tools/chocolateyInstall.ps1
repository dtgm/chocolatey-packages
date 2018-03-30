$packageName = 'bluej'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://www.bluej.org/download/files/BlueJ-windows-412.msi'
$checksum = '41b14f766da16298895e23c91ad84d22dc453e596ac74133a53a4fc32220a0f1'
$checksumType = 'sha256'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"