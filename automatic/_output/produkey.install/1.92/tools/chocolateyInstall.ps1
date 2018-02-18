$packageName = 'produkey.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/produkey_setup.exe'
$checksum = 'a424fa9cd52a0132ed2ac55cf99860c69028e16d4183ad33d3fbff14416ca7d3'
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