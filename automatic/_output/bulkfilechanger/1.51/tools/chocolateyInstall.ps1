$packageName = 'bulkfilechanger'
$url = 'http://www.nirsoft.net/utils/bulkfilechanger.zip'
$checksum = '763f92127d9e9d035d1c574e9a799d4e73596b5ce690599da5ecbb032ef41dbe'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/bulkfilechanger-x64.zip'
$checksum64 = '26688332602d50599355a69ebd12640b22b242a38b2208c633634629dcc0f4b2'
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