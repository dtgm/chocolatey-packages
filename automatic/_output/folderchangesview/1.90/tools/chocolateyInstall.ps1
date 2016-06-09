$packageName = 'folderchangesview'
$url = 'http://www.nirsoft.net/utils/folderchangesview.zip'
$checksum = '65d577af3a48a8c9aa19d3a23220f6c36ac5f27642a979a583a77a37494e361e'
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