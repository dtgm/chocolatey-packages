$packageName = 'peazip.install'
$urlArray = @('http://www.peazip.org/downloads/peazip-6.3.1.WINDOWS.exe', 'http://www.peazip.org/downloads/peazip-6.3.1.WIN64.exe')
$url = $urlArray[0]
$checksum = '902527973a855db3ac2b040de2b8bebcf3a41fcf7aedac564d49e7db0d3bf024'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '47e011e0cf6000c5e0a5100e78e5f4d3bb9d21606ad99204a7fdfa9758cad7ef'
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