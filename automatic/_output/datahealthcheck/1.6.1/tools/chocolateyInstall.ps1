$packageName = 'datahealthcheck'
$packageVersion = '1.6.1'
$url = 'https://github.com/cryptogeek/DataHealthCheck/raw/master/source/DataHealthCheck/bin/Release/DataHealthCheck.exe'
$checksum = '20ec182b08a72c727f30130f81598b386e90fe53'
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