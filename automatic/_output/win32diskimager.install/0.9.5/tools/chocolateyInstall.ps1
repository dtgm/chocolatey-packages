# generated vars
$packageName = 'win32diskimager.install'
$url = 'http://sourceforge.net/projects/win32diskimager/files/Archive/Win32DiskImager-0.9.5-install.exe/download'
$checksum = 'f7ca6ffdd3b70dbb4723f33471df3f7dcc225ca4'

# static vars
$checksumType = 'sha1'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

# $Env:ChocolateyInstall\helpers\functions
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"