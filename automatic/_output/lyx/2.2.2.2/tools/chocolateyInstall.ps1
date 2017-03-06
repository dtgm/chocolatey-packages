$packageName = 'lyx'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://ftp.lyx.org/pub/lyx/bin/2.2.2/LyX-222-Installer-2.exe'
$checksum = '4882b9ea45a13e599fd3633197b40c0da370406b9971c7598f6ec94feb7ce56f'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"