$packageName = 'ipnetinfo.portable'
$url = 'http://www.nirsoft.net/utils/ipnetinfo.zip'
$checksum = '75d9c7a347c8442ab45eb591ced5ff40b8aa49e7ecce4afafacd34d383cf45d2'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "ipnetinfo.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null