$packageName = 'advor'
$url = 'https://sourceforge.net/projects/advtor/files/AdvOR-0.3.1.3/AdvOR-0.3.1.3.zip/download'
$checksum = '{checksum}'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installDir = Join-Path $toolsDir "AdvOR"
$installFile = Join-Path $installDir "AdvOR.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null
