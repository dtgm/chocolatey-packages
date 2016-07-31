$packageName = 'stellarium'
$installerType = 'exe'	
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$urlArray = @('http://sourceforge.net/projects/stellarium/files/Stellarium-win32/0.15.0/stellarium-0.15.0-win32.exe', 'http://sourceforge.net/projects/stellarium/files/Stellarium-win64/0.15.0/stellarium-0.15.0-win64.exe')
$url = $urlArray[0]
$checksum = '1b411ef369e949d21bee3dc741ccf16712e86bdd6392872fb633a23489383ba1'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$validExitCodes = @(0)
$checksum64 = '099e32491aeecff08f326e00384f58be0780a06b547433b596265ddf953098e1'
$checksumType64 = 'sha256'

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
