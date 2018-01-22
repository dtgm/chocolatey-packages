$packageName = 'csvfileview'
$url = 'http://www.nirsoft.net/utils/csvfileview.zip'
$checksum = 'c9d3c070018b1a6c15db7059e4ebce4df0bcef1a7f93d894520858c7dc81638e'
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