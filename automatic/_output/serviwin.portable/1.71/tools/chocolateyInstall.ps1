$packageName = 'serviwin.portable'
$url = 'http://www.nirsoft.net/utils/serviwin.zip'
$checksum = '549ae6a1222f80c85d7abad860866c00f5df12ad284f03a4e695e542e9540ff6'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "serviwin.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null