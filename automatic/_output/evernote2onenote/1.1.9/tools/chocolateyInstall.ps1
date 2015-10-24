$packageName = 'evernote2onenote'
$url = 'http://sourceforge.net/projects/evimsync/files/evernote2onenote/Evernote2Onenote-1.1.9.zip/download'
$checksum = '671d2c2a58593515b90f6c53228cf40b41ef1af3'
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