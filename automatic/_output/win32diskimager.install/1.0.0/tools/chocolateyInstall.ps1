# generated vars
$packageName = 'win32diskimager.install'
$url = 'https://sourceforge.net/projects/win32diskimager/files/Archive/win32diskimager-1.0.0-install.exe'
$checksum = 'a51c9fc75c9caa44df03502838f229a70d484963f54675c241799093a59d8874'

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