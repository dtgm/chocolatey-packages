$packageName = 'peazip.install'
$urlArray = @('http://www.peazip.org/downloads/peazip-6.4.0.WINDOWS.exe', 'http://www.peazip.org/downloads/peazip-6.4.0.WIN64.exe')
$url = $urlArray[0]
$checksum = 'b467703f8f1755ba0c05c1c61f9a783c21fa990318c7c6556a17610d380b347d'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = 'c959a6ca854a20e47c73c7820cb6b89ef13c722b65b40864635df65a67f1641c'
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