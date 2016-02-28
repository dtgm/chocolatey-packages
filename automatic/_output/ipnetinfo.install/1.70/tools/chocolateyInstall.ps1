$packageName = 'ipnetinfo.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/ipnetinfo_setup.exe'
$checksum = '1c75b403a79beaf8bd0c02e7ea321bcc0497eefa'
$checksumType = 'sha1'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"