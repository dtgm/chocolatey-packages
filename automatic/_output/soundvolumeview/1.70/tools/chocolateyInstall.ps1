$packageName = 'soundvolumeview'
$url = 'http://www.nirsoft.net/utils/soundvolumeview.zip'
$checksum = '00e139549cbdd42284affc13d37014a7791b22d05ae337d6d4352f9a30bd815b'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/soundvolumeview-x64.zip'
$checksum64 = 'f70866599df20d5e1c8036accee90eaa776770028f4d2bb90bb3b3c640e9a8f5'
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