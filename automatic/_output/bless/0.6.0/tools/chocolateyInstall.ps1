$packageName = 'bless'
$url = 'http://download.gna.org/bless/bless-bin-0.6.0.zip'
$checksum = '0ebe1985ab2646cbe13899b93d4d6d27943ad47c'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path -Path $toolsDir `
                         -ChildPath "bless-bin-0.6.0" `
               | Join-Path -ChildPath "bin" `
               | Join-Path -ChildPath "bless.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null
