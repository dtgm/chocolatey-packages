$packageName = 'serviwin.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/serviwin_setup.exe'
$checksum = '167721586c5fed23056d11c0e19649f05a8c333307d66ea65b35197527a962c9'
$checksumType = 'sha256'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"