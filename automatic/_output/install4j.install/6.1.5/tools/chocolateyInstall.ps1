$packageName = 'install4j.install'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows_6_1_5.exe'
$checksum = 'cab6e4084165b5889369701e7f926cadd368e492c50cf65fa43bf512bb15bc26'
$checksumType = 'sha256'
$url64 = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows-x64_6_1_5.exe'
$checksum64 = 'da2391713dfc7914cd70362c47d256c6f9def7a274814191daabc21de136dccb'
$checksumType64 = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"