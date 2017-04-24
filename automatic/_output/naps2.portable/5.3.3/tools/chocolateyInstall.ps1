$packageName = 'naps2.portable'
$url = 'https://github.com/cyanfish/naps2/releases/download/v5.3.3/naps2-5.3.3-portable.zip'
$checksum = '1df1408ef0af95057c8f3e5466cad12f2e479c1c007e8e998f55ce410bf8e690'
$checksumType = 'sha256'
$toolsDir = Split-Path -parent $MyInvocation.MyCommand.Definition

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Write-Verbose "Creating GUI executable sidecar for shimgen.exe"
$guiExe = Join-Path $toolsDir "NAPS2.Portable.exe"
Set-Content -Path ("$guiExe.gui") `
            -Value $null