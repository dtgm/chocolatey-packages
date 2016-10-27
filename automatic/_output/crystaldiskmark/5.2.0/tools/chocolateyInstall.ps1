$packageName = 'crystaldiskmark'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://en.osdn.jp/frs/redir.php?f=%2Fcrystaldiskmark%2F66553%2FCrystalDiskMark5_2_0-en.exe'
$checksum = '9e3eac56da1b0ab37f8749dbfdf247cfcfda1db8'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"