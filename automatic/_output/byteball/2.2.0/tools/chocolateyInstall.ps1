$packageName = 'byteball'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/byteball/byteball/releases/download/v2.2.0/Byteball-win32.exe'
$checksum = 'c3237c1608b81cbbdd2503b33a8bcf357a7921665c433300e009a25ef058e1a7'
$checksumType = 'sha256'
$url64 = 'https://github.com/byteball/byteball/releases/download/v2.2.0/Byteball-win64.exe'
$checksum64 = 'fcc7b216ac5a54a82bcf788870ece3724803f6559ddf267eb7d358159fb1ce02'
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