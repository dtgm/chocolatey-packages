$packageName = 'vcredist2013'
$installerType = 'exe'
$url = '	http://download.microsoft.com/download/C/C/2/CC2DF5F8-4454-44B4-802D-5EA68D086676/vcredist_x86.exe'
$checksum = '3fd0a926dbcc5306e1b3e529637ab3e698070c6e93b5de7f6ba05d691349ef78'
$checksumType = 'sha256'
$url64 = 'http://download.microsoft.com/download/C/C/2/CC2DF5F8-4454-44B4-802D-5EA68D086676/vcredist_x64.exe'
$checksum64 = '8588eb697eb2049344e6206d2b66ff63104f1c55e553621ab8ecc504d6b9e9d4'
$checksumType64 = 'sha256'
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