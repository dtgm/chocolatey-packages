$packageName = 'duplicatefilefinder'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /TASKS=desktopicon'
$url = 'http://downloads.auslogics.com/en/duplicate-file-finder/duplicate-file-finder-setup.exe'
$checksum = '8e74fed182d2dfb0314293ba825b4779b8d4a68f28c5db8433da42ff2212db2e'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"