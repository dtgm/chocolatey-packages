$packageName = 'foldertimeupdate'
$url = 'http://www.nirsoft.net/utils/foldertimeupdate.zip'
$checksum = '75e9a82acc26bbe8aab163ef73d9d5da114d59e76d385c23b2f08a0390306224'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/foldertimeupdate-x64.zip'
$checksum64 = '71c3068358b3ef72527a5160e6a7c127a3aac6d7fd3537b8ad88b26f058fb952'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

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