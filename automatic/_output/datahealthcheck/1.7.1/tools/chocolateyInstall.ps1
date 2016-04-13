$packageName = 'datahealthcheck'
$packageVersion = '1.7.1'
$url = 'https://github.com/cryptogeek/DataHealthCheck/raw/master/source/DataHealthCheck/bin/Release/DataHealthCheck.exe'
$checksum = '21dd0ee9d30593b735d18a5e0b2e0768e649adab'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null