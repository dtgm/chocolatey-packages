$packageName = 'zona'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.towersvaultbundles.com/c?x=VnUH%2BFnzHEu5WfoD3p1CsViFIuhO0UfXnM7QzE%2B4xAc%3D&c=Jj9JTpIF3JxxX4SIrIY7WeNQxRTIwdvejwxh5SciOy1AbuASpWXNLAOmNCcWFVP84WudqtgL95xX35AClm9sjgqee2V2Ahq89km%2FjKNgYBU46REa3MaQeFe6n0dxvaSi&fallback_url=https:%2F%2Fdl.appzona.org%2FZonaSetup[OTxE].exe&downloadAs=ZonaSetup[OTxE].exe'
$checksum = '2fa54fec7fd9e3525e71705650d7e81fd6d1d946'
$checksumType = 'sha1'
$validExitCodes = @(0) #exit codes http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

$scriptPath = Split-Path -parent $MyInvocation.MyCommand.Definition
$ahkFile = Join-Path $scriptPath "chocolateyInstall.ahk"
$ahkExe = 'AutoHotKey'
Start-Process $ahkExe $ahkFile

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"