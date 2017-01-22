$packageName = 'zona'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.bestbodymega.com/Q6aUGfnNJPumx80qqZMSY62NrYPtflTe6qZdVJQc4+nfJwu15KkMrJXs4LEvAxdC7xoK8xr5xWU8nQAuO8C1SYiusrUYa32gfOVxHPvj6KM8xGlYjOOBt63LpjYATTcSFQXMXx_q3NvsQ6z7EiNX7fZO13H+jA==-CxWAaHR0cHM6Ly9kbC5hcHB6b25hLm9yZy9ab25hU2V0dXBbMnAyV1ZdLmV4ZQM='
$checksum = '7b769f0cffe6b16f383ae4596e2a7f4b6ff3dfec1cc39a492846cb7da4c5d65e'
$checksumType = 'sha256'
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