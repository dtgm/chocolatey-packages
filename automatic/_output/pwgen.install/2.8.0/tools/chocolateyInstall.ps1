# generated vars
$packageName = 'pwgen.install'
$url = 'https://sourceforge.net/projects/pwgen-win/files/PWGen/2.8.0/PWGen-2.8.0-Setup.exe'
$checksum = 'db216c2116d110327f375b45a43750c6efbb7c3e'

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