$packageName = 'tortoisehg'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-4.0.0-x86.msi'
$checksum = '3d449b855ecf253b919bba3da6c94521ff0678328cb9cb5016dec4cede1b6180'
$checksumType = 'sha256'
$url64 = 'http://bitbucket.org/tortoisehg/files/downloads/tortoisehg-4.0.0-x64.msi'
$checksum64 = '8a9fb79e43849503744811c4665bcc054b32186b8d463f9a2250cc58adc7ed8e'
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