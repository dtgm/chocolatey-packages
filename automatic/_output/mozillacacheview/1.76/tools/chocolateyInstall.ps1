$packageName = 'mozillacacheview'
$url = 'http://www.nirsoft.net/utils/mozillacacheview.zip'
$checksum = 'f198a76db498684a943298b1e657540e75e91d8342b42f1ae203529ad2235a5f'
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