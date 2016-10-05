$packageName = 'peerblock'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/peerblock/PeerBlock-Setup_v1.2_r693.exe'
$checksum = '769bfc74dbae2e2851f7a1c731d833ff9d7ed228'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
