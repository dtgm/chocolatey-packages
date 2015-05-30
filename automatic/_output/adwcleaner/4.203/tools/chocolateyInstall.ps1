$packageName = 'adwcleaner'
$version = '4.203'
$url = 'http://download.bleepingcomputer.com/dl/3c74971cf793abff46d50bee3a7d5152/55512e81/windows/security/security-utilities/a/adwcleaner/adwcleaner_4.203.exe'
$checksum = 'de6d03ad17736f57d3c351ff11c4d93775cfac1f'
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
