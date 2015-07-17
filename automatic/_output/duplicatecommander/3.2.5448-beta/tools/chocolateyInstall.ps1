$packageName = 'duplicatecommander'
$url = 'http://www.rayburnsoft.net/software/dcbeta.zip'
$checksum = '189e26d234e09cffcb792bd0b5aa4eb8f5b3f42e'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# create an empty sidecar metadata file for closed-source shimgen.exe to designate gui
$installFile = Join-Path $toolsDir "Duplicate Commander.exe"
Set-Content -Path ("$installFile.gui") `
            -Value $null