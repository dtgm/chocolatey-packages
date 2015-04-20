$packageName = 'fastresolver.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/fastresolver_setup.exe'
$checksum = 'dda7d001433719034b67f15ad8d86f64df34a7cf'
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