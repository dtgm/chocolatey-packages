$packageName = 'peazip.install'
$urlArray = @('http://sourceforge.net/projects/peazip/files/6.0.3/peazip-6.0.3.WINDOWS.exe/download', 'http://sourceforge.net/projects/peazip/files/6.0.3/peazip-6.0.3.WIN64.exe/download')
$url = $urlArray[0]
$checksum = 'f695d6f85b74991995d23dc5a40b8a4c69e6b382243f1728a6e9d335eebfe42d'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '04ea5a270bbb5d6fc0021837fbc0ad5f89354a807c55327ef130c3a730c83ce8'
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