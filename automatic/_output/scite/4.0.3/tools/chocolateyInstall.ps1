$packageName = 'scite'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://www.ebswift.com/uploads/7/0/4/0/70403747/scite-4.0.3x86.msi'
$checksum = '84d9efb93d66b768aeb043beb90cb64717f6341e7b8d12bc11574468ea1407d0'
$checksumType = 'sha256'
$url64 = 'http://www.ebswift.com/uploads/7/0/4/0/70403747/scite-4.0.3x64.msi'
$checksum64 = 'e2a621f9acd355b71c49819456a5147dbf7b8b42a638dd4aedf3db5e22ce20dd'
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