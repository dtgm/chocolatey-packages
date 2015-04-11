$packageName = 'diskmarkstream'
$url = 'http://sourceforge.net/projects/diskmarkstream/files/0.5.9/DMStream059.zip/download'
$checksum = '2a975ea928987ca42890e77f642458d176007b09'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "DiskMarkStream.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null
