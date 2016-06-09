$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$url64 = "$url"
$checksum64 = "$checksum"
$checksumType64 = "$checksumType"
$unzipLoc = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installDir = Join-Path $unzipLoc "SARDU_3"
$shimGui = Join-Path $installDir "sardu_3.exe.gui"
$shimIgnore = Join-Path $installDir "7z.exe.ignore"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$unzipLoc" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"
Set-Content -Path ("$shimGui") `
            -Value $null
Set-Content -Path ("$shimIgnore") `
            -Value $null