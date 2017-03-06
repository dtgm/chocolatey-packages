# generated vars
$packageName = 'pwgen.install'
$url = 'https://sourceforge.net/projects/pwgen-win/files/PWGen/2.9.0/PWGen-2.9.0-Setup.exe'
$checksum = '7b363521a010d681e0da5db4d925757ff10654185119ff6c74d328df0e2853e9'

# static vars
$checksumType = 'sha256'
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