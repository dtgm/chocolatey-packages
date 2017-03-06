$packageName = 'wakemeonlan'
$url = 'http://www.nirsoft.net/utils/wakemeonlan.zip'
$checksum = '7b442da7050a44305ad6d0910fb505a41142255022ce58be07ce8ef8fd2aaeb1'
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