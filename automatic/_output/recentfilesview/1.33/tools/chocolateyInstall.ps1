$packageName = 'recentfilesview'
$url = 'http://www.nirsoft.net/utils/recentfilesview.zip'
$checksum = '6920cc0165fcffa1a009c663c3dce7c84a62ca0e4b73d9d86dc9cc0dc39dca61'
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