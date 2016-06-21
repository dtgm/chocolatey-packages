$packageName = 'driveletterview'
$url = 'http://www.nirsoft.net/utils/driveletterview.zip'
$checksum = '6d139a1101bf5906fd403b3792a438f49575d9b06daa04dcdde16680746e195e'
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