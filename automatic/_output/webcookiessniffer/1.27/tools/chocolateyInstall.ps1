$packageName = 'webcookiessniffer'
$url = 'http://www.nirsoft.net/utils/webcookiessniffer.zip'
$checksum = 'c02aa3959930352391aa487cf81f583bf09de5a00db9d2c85773e7679d5bbe84'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/webcookiessniffer-x64.zip'
$checksum64 = 'f23e0bf96fb9e5619c46de6b5cae4041b87f212a3a4df24f432f5d8587df5ac1'
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