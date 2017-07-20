$packageName = 'byteball'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/byteball/byteball/releases/download/v1.9.3/Byteball-win32.exe'
$checksum = '9745310ea4311cc3d263d5b02c048871ccdd4c9112df7e54f620c66f04e4f4ec'
$checksumType = 'sha256'
$url64 = 'https://github.com/byteball/byteball/releases/download/v1.9.3/Byteball-win64.exe'
$checksum64 = '65f0f66c8c1684d14e8751f7d0c7c0240e8cbca40614f53f64663e7579919212'
$checksumType64 = 'sha256'
$validExitCodes = @(0)

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