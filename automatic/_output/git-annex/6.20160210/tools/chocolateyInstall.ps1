$packageName = 'git-annex'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://downloads.kitenet.net/git-annex/windows/current/git-annex-installer.exe'
$checksum = 'ec81af9ee5507d9dc5d57971ad90f6aa88afcb31'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"