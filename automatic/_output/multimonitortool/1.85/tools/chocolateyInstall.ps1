$packageName = 'multimonitortool'
$url = 'http://www.nirsoft.net/utils/multimonitortool.zip'
$checksum = 'b7a40e9149f19cfc90893c20b3a510c7f0142652a5a75423d6c148ca3144655f'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/multimonitortool-x64.zip'
$checksum64 = '607bb0fd319661e7d5b9d9445e2eeca3a313971bcc9711fb2e3cd002b5ede4f8'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Set-Content -Path ("$installFile.gui") `
            -Value $null