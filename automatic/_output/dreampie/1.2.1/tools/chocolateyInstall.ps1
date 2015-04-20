$packageName = 'dreampie'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/downloads/noamraph/dreampie/dreampie-1.2.1-setup.exe'
$checksum = '769b45c368c0496683227cf1d514984e596121c1'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"