$packageName = 'regscanner.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/regscanner_setup.exe'
$checksum = '5880d20d45a98c19a5ecab0459fc43275f2509d0'
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