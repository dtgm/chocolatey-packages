$packageName = 'lsasecretsdump'
$url = 'http://www.nirsoft.net/toolsdownload/lsasecretsdump.zip'
$checksum = 'aca4bab499b2b292bb2b0ec5bb416a1c38d15053'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null