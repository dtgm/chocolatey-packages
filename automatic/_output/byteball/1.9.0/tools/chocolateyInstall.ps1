$packageName = 'byteball'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/byteball/byteball/releases/download/v1.9.0/Byteball-win32.exe'
$checksum = 'c996adce732b6a03ae5fe57c8384c2f4c3373ef7e5ddfcb1aad2bcab1a2be690'
$checksumType = 'sha256'
$url64 = 'https://github.com/byteball/byteball/releases/download/v1.9.0/Byteball-win64.exe'
$checksum64 = '5f354d788beff835ca24ad297c8501eb9f8f56eb72dff309a0377c7e988dd5f8'
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