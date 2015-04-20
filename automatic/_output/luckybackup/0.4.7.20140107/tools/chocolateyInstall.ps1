# generated vars
$packageName = 'luckybackup'
$url = 'http://bmtsolutions.us/files/luckyb/luckyBackup-0.4.7-win32-build20140107.exe'
$checksum = '092c213a0deacf502225710769e016fda38add99'

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