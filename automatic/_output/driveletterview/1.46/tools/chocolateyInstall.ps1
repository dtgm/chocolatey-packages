$packageName = 'driveletterview'
$url = 'http://www.nirsoft.net/utils/driveletterview.zip'
$checksum = '675f4c94b75685afd877badd87b8fc1027bdf4da8d3cbaacf694ff1d49d6e32f'
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