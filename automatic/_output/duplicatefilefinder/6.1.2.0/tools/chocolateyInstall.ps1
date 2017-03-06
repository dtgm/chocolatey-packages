$packageName = 'duplicatefilefinder'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /TASKS=desktopicon'
$url = 'http://downloads.auslogics.com/en/duplicate-file-finder/duplicate-file-finder-setup.exe'
$checksum = '14429f59828ad8366adb348b89df3d05098cc0a59745f11add7e64be6ad80f9d'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"