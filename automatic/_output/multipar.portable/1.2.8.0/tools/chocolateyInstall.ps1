$packageName = 'multipar.portable'
$url = 'http://multipar.eu//download/archive/dl.php?fn=MultiPar1280.zip'
$checksum = '65363F38F17DC4C5D3AD14FF2C52EE842F96D137'
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