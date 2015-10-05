$packageName = 'peazip.install'
$urlArray = @('https://github.com/giorgiotani/PeaZip/releases/download/5.8.0/peazip-5.8.0.WINDOWS.exe', 'https://github.com/giorgiotani/PeaZip/releases/download/5.8.0/peazip-5.8.0.WIN64.exe')
$url = $urlArray[0]
$checksum = '573fd9a971d688cb0070049f1c4dcc61a3660d8f'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = '6d3f05b391920535ad54ca158eab7588f6516f06'
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