$packageName = 'peazip.install'
$urlArray = @('http://www.peazip.org/downloads/peazip-6.4.1.WINDOWS.exe', 'http://www.peazip.org/downloads/peazip-6.4.1.WIN64.exe')
$url = $urlArray[0]
$checksum = 'c51afca27e713afb95e50193ee0a23ffd39e8d47fe7fbbe7f9586f221d3a0d81'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '941079a631d85a498a7b8bf0fca3321e08538d71c31b92ac409f7202a135e56d'
$checksumType64 = 'sha256'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
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