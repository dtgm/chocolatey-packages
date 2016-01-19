$packageName = 'vcredist2008'
$installerType = 'exe'
$url = 'https://download.microsoft.com/download/9/7/7/977B481A-7BA6-4E30-AC40-ED51EB2028F2/vcredist_x86.exe'
$checksum = 'bd18409cfe75b88c2a9432d36d96f4bf125a3237'
$checksumType = 'sha1'
$url64 = 'https://download.microsoft.com/download/9/7/7/977B481A-7BA6-4E30-AC40-ED51EB2028F2/vcredist_x64.exe'
$checksum64 = '5da9a064b1fc505beef0d06e7d10baf8e5d92d09'
$checksumType64 = 'sha1'
$silentArgs = '/Q'
$validExitCodes = @(0,3010)  # http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
 
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"
 
if (Get-ProcessorBits 64) {
  Install-ChocolateyPackage -PackageName "$packageName" `
                            -FileType "$installerType" `
                            -Url "$url" `
                            -SilentArgs "$silentArgs" `
                            -ValidExitCodes $validExitCodes `
                            -Checksum "$checksum" `
                            -ChecksumType "$checksumType"
}