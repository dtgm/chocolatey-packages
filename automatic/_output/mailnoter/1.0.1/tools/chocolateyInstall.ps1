$packageName = 'mailnoter'
$url = 'http://sourceforge.net/projects/mailnoter/files/MailNoter-1.0.1.zip/download'
$checksum = '207b2b848687e8e4d34540f8b4ea5d928c888a72'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") -Value $null