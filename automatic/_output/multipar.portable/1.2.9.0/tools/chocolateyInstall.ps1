$packageName = 'multipar.portable'
$url = 'http://multipar.eu//download/archive/dl.php?fn=MultiPar1290.zip'
$checksum = '07607D055E4D9D10BF9C3914EB54674CE61816C5'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "MultiPar.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null