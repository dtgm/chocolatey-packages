$packageName = 'whoiscl'
$url = 'http://www.nirsoft.net/utils/whoiscl.zip'
$checksum = 'cb7d0a4a296153c77748b64c417f7f49a246184fe827f2868f33fceb8bee35d7'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null