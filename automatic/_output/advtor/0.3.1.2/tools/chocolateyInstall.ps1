$packageName = 'advtor'
$url = 'https://sourceforge.net/projects/advtor/files/AdvOR-0.3.1.2/AdvOR-0.3.1.2.zip'
$checksum = 'af80718c0debf525179861af6fac716a4437572a1c5913a31bc8a2f42113e423'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir (Join-Path "AdvOR" "AdvOR.exe")

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null