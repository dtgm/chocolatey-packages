$packageName = 'outlookattachview'
$url = 'http://www.nirsoft.net/utils/outlookattachview.zip'
$checksum = '19e6d5e264c931e494e449b12bacf75d09240728'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/utils/outlookattachview-x64.zip'
$checksum64 = 'e0d79fafbe805cc3a06b63b47bec59e0cc205144'
$checksumType64 = 'sha1'
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