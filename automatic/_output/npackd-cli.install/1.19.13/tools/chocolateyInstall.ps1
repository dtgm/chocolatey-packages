$packageName = 'npackd-cli.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://sourceforge.net/projects/npackd/files/com.googlecode.windows-package-manager.NpackdCL/NpackdCL-1.19.13.msi/download'
$checksum = 'f474e5fd36a6827f9e0b82182fb662b621458a34'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"