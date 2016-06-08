$packageName = 'smsniff.portable'
$url = 'http://www.nirsoft.net/utils/smsniff.zip'
$checksum = '84f77c70fc0cb9a0106a7a08323d58994f3c5fbebbc1e3ea8b3cf64a43a2302f'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/smsniff-x64.zip'
$checksum64 = '9edba348467065f0fc7706841fe30a7200df15b78959f5d787b6c0c1244af5e8'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "smsniff.exe"

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