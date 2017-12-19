$packageName = 'regfileexport'
$url = 'http://www.nirsoft.net/utils/regfileexport.zip'
$checksum = '6fd8a9a0278522755aae44f15a7ec3ddbfb054d17f693f653a3f3304b866fdca'
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