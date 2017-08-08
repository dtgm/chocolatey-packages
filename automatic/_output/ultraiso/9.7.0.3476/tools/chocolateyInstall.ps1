$packageName = 'ultraiso'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'http://www.ezbsystems.com//dl1.php?file=uiso9_pe.exe'
$checksum = '16ce159a6dd63855fa4658e789f5a2053e9bdfdda2d4246b626efe638bd48e19'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"