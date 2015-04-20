$packageName = 'gurtle'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'https://gurtle.googlecode.com/files/Gurtle-0.6.0.236-x86.msi'
$checksum = '8973f5692c593a5092b1fa1d38c697e091c2cd31'
$checksumType = 'sha1'
$url64 = 'https://gurtle.googlecode.com/files/Gurtle-0.6.0.236-x64.msi'
$checksum64 = 'fed7053d5329bf95bea3e4e38520020284647b3d'
$checksumType64 = 'sha1'
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