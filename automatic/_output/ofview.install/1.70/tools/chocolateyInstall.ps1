$packageName = 'ofview.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/ofview_setup.exe'
$checksum = 'e8f9f7b74d397535c7302e2638f20ba2cb113db0e29903fe2d88c43faa29d168'
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