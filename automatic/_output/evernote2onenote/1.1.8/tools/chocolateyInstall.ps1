$packageName = 'evernote2onenote'
$url = 'http://sourceforge.net/projects/evimsync/files/evernote2onenote/Evernote2Onenote-1.1.8.zip/download'
$checksum = '8b37660f90a26446753d2a0672f6bb43d485e0dd'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `

Set-Content -Path ("$installFile.gui") -Value $null