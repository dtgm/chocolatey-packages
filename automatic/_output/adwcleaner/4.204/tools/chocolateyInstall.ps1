$packageName = 'adwcleaner'
$version = '4.204'
$url = 'http://download.bleepingcomputer.com/dl/1ce42272cdbfca07c40a8f9fd9e9a7ed/55570ede/windows/security/security-utilities/a/adwcleaner/adwcleaner_4.204.exe'
$checksum = '4e3a2540034096f2e7d6727bdf3b46c4bbef1a8f'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$ahkFile = Join-Path "$toolsDir" 'chocolateyInstall.ahk'
$installFile = Join-Path $toolsDir "$($packageName).exe"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null

Start-Process 'AutoHotKey' $ahkFile
Start-Process $installFile
