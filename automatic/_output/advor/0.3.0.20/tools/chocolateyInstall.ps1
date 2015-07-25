$packageName = 'advor'
$url = 'http://sourceforge.net/projects/advtor/files/AdvOR-0.3.0.20/AdvOR-0.3.0.20.zip/download'
$checksum = 'b0f935a0b81c2dd10c8b090ba9152e9614e74a39'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installDir = Join-Path $toolsDir "AdvOR"
$installFile = Join-Path $installDir "AdvOR.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null
