$packageName = 'evernote2onenote'
$url = 'http://sourceforge.net/projects/evimsync/files/evernote2onenote/Evernote2Onenote-1.2.0.zip/download'
$checksum = 'c8d2f728a22395021c6cfc771d2bdd8b8ad3eb46'
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