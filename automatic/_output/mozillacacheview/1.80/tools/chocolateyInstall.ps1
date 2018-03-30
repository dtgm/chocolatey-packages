$packageName = 'mozillacacheview'
$url = 'http://www.nirsoft.net/utils/mozillacacheview.zip'
$checksum = '6fecfc07e36a17dc2f338a30ed8c82d9ad8cb1d249c39ab9804869f7c85643aa'
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