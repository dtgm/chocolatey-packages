$packageName = 'peazip.install'
$urlArray = @('https://github.com/giorgiotani/PeaZip/releases/download/5.9.0/peazip-5.9.0.WINDOWS.exe', 'https://github.com/giorgiotani/PeaZip/releases/download/5.9.0/peazip-5.9.0.WIN64.exe')
$url = $urlArray[0]
$checksum = 'a3de4fe5ee21072422164910751c450d8f418668'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '4b8f6485f0516f8e82520d3f7e257b4d065ee856'
$checksumType64 = 'sha1'
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