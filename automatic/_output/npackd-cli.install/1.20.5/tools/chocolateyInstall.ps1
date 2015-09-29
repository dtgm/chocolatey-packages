$packageName = 'npackd-cli.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://sourceforge.net/projects/npackd/files/com.googlecode.windows-package-manager.NpackdCL/NpackdCL-1.20.5.msi/download'
$checksum = 'ff97c2936dc3997aaf32b08f1d6abd7350d99650'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"