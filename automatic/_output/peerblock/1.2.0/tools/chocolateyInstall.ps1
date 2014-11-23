$packageName = 'peerblock'
$installerType = 'exe'
$url = 'https://peerblock.googlecode.com/files/PeerBlock-Setup_v1.2_r693.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes