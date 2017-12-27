$packageName = 'winlogonview'
$url = 'http://www.nirsoft.net/utils/winlogonview.zip'
$checksum = 'fe12baf79f9832770b909cde4141762000c5e0763bf918913e16b3815dc49c63'
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