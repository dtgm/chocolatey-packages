# generated vars
$packageName = 'pwgen.install'
$url = 'http://sourceforge.net/projects/pwgen-win/files/PWGen/2.5.4/PWGen-2.5.4-Setup.exe/download'
$checksum = '6f58959d1df6dbb4fcab898ba70541990e3e58e5'

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