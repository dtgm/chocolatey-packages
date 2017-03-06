$packageName = 'fbcacheview'
$url = 'http://www.nirsoft.net/utils/fbcacheview.zip'
$checksum = '7ec9f33cabad976009eda37679bf27a5bd3197466a82775863453094c78750c1'
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