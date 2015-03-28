$packageName = 'evernote2onenote'
$url = 'http://sourceforge.net/projects/evimsync/files/evernote2onenote/Evernote2Onenote-1.1.7.zip/download'
$checksum = '22c410b3a817de465a52e3b7ac2530f13cfc521f'
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