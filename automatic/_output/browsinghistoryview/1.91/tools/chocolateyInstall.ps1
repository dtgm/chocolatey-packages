$packageName = 'browsinghistoryview'
$url = 'http://www.nirsoft.net/utils/browsinghistoryview.zip'
$checksum = '787ce34f348c2a70efb8fac2f5ec8acadf805dd5169e0a5fb2401d33d3860566'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/browsinghistoryview-x64.zip'
$checksum64 = '2481b9df9c9e814a19ec8211cb9b70efc61b8f468842811df01a7a167bc216b9'
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