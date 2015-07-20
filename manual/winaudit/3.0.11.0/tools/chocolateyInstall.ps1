$packageName = 'winaudit'
$url = 'https://winaudit.codeplex.com/downloads/get/909113'
$checksum = '11A4917010F23A9CAA8FEF1F3BCD6B98'
$checksumType = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "WinAudit.exe"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null