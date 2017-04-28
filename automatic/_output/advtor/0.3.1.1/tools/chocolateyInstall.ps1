$packageName = 'advtor'
$url = 'https://sourceforge.net/projects/advtor/files/AdvOR-0.3.1.1/AdvOR-0.3.1.1.zip'
$checksum = '25bf86fcbd915acb613714b6845b0bb32d33a8535a2f6b851ddd41eaa37ebb61'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir (Join-Path "AdvOR" "AdvOR.exe")

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null