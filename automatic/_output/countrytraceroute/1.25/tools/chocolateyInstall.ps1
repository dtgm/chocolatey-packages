$packageName = 'countrytraceroute'
$url = 'http://www.nirsoft.net/utils/countrytraceroute.zip'
$checksum = '41c1fce68bfb805540af711f7eae20dd6848341f'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null