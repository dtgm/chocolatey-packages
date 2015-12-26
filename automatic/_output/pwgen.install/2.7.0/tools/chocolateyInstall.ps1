# generated vars
$packageName = 'pwgen.install'
$url = 'http://sourceforge.net/projects/pwgen-win/files/PWGen/2.7.0/PWGen-2.7.0-Setup.exe/download'
$checksum = 'e3681674b10f54b28ec0e0753c5697e98f2c052c'

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