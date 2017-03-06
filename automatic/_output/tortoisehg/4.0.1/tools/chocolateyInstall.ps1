$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-4.0.1-x86.msi'
$checksum = 'a6bc99548cfa42f59e96f6628a95be3fd9a2ddb1a03a8d013ea644051bbfbcc1'
$checksumType = 'sha256'
$url64 = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-4.0.1-x64.msi'
$checksum64 = '0e3e18b4cdc2c4c92befa0093568012d81e445a63164eeff51fb9092755f80b0'
$checksumType64 = 'sha256'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"