$packageName = 'zona'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.bestbodymega.com/heDewm9cveiuI2Z1zIt2X7r4hObKDS4383SKQnj4O8KqXKb16pqNdSYWG6L4G6ANmTRKXiRQ3OFU73+1tJa6MhxuP5RoYXB6YGzTPN42wrgbMMTLvZcYFV5EtX3GMcxgLdPCOktKyRXDq1q+oPdUmnQRL2N0SA==-CxWAaHR0cHM6Ly9kbC5hcHB6b25hLm9yZy9ab25hU2V0dXBbMkY3RDhdLmV4ZQM='
$checksum = 'dadceb81b4a7c33f1ed872b4004da38aa272b9b1367d0dc0fff5c37767f48016'
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