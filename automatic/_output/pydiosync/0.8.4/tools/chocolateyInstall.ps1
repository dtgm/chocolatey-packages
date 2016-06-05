$packageName = 'pydio-sync'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$urlArray = @('https://sourceforge.net/projects/ajaxplorer/files/pydio-sync/java/0.8.4/Pydio-0.8.4-Windows-x86-Setup.msi', 'https://sourceforge.net/projects/ajaxplorer/files/pydio-sync/java/0.8.4/Pydio-0.8.4-Windows-x86_64-Setup.msi')
$url = $urlArray[0]
$checksum = '78870b1de4031d536f20f3b5d485621fcdd15c1a'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'b57ec5ea497794ea980ab5fd7213ba58c48d466d'
$checksumType64 = 'sha1'
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