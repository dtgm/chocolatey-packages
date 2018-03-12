$packageName = 'cports'
$url = 'http://www.nirsoft.net/utils/cports.zip'
$checksum = 'f81e07d50747b7efbb664125d42cd69b354847b94fa30e7566415ff52b928c83'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/cports-x64.zip'
$checksum64 = '5cb548dc7b5baa07a2d7157be92471e194621030004f50efe6f03d06e407061e'
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