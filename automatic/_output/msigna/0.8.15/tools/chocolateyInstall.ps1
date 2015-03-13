$packageName = 'msigna'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://ciphrex.com/releases/win64/setup-0.8.15.exe'
$checksum = '736874d773bd71d82a9c1f4eb9c692f40bb42921'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"