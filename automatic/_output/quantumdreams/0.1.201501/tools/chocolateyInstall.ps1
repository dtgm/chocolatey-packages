$packageName = 'quantumdreams'
$url = 'http://scienceathome.org/wp-content/uploads/2015/01/QuantumDreamsWin.zip'
$checksum = 'a30f89e39f25681e9f270eb215d2d2587d181245'
$checksumType = 'sha1'
$url64 = "$url"
$checksum64 = "$checksum"
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$zipDir = Join-Path $toolsDir "QuantumDreams"
$installFile = Join-Path $zipDir "QuantumDreams.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Set-Content -Path ("$installFile.gui") `
            -Value $null
