$packageName = 'crystaldiskmark'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://en.osdn.jp/frs/redir.php?f=%2Fcrystaldiskmark%2F65730%2FCrystalDiskMark5_1_2-en.exe'
$checksum = '2852a80f907fd55c8d1a1650c50c8f1e3729c958'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"