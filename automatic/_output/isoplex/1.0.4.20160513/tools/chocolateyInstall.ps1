$packageName = 'isoplex'
$installerType = 'exe'
$silentArgs = '/exenoui /quiet /qn /norestart'
$url = 'https://web.archive.org/web/20150101201948/http://isoplex.isohunt.to/files/isoplex-setup-1.0.4.exe'
$checksum = 'f856fc4fd74e66edd8f5aadfec556e35ce5910db'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"