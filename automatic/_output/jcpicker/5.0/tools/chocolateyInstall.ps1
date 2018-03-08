$packageName = 'jcpicker'
$url = 'http://annystudio.com/software/colorpicker/jcpicker.zip'
$checksum = 'f729a49c433e658aa73498322740cca6237aba1aa5816e50a0c185d31664b5c1'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null