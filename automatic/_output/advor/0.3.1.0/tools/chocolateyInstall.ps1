$packageName = 'advor'
$url = 'https://sourceforge.net/projects/advtor/files/AdvOR-0.3.1.0/AdvOR-0.3.1.0.zip'
$checksum = '31ce6e5d4af6b132ae979ae8855a0ddb38f2da6b61f5cac17cd2fe128ec69d8f'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installDir = Join-Path $toolsDir "AdvOR"
$installFile = Join-Path $installDir "AdvOR.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null
