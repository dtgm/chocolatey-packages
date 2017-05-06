$packageName = 'insideclipboard'
$url = 'http://www.nirsoft.net/utils/insideclipboard.zip'
$checksum = 'fe5052f6efc39f5f223b32006616841eb95c08eb8f85acff41f502ba883d7737'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null