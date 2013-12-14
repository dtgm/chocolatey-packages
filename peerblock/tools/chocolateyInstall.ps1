$packageName = 'peerblock'
$installerType = 'EXE'
$url  = 'http://peerblock.googlecode.com/files/PeerBlock-Setup_v1.1_r518.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"