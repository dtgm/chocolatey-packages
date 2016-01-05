$packageName = 'evernote2onenote'
$url = 'http://sourceforge.net/projects/evimsync/files/evernote2onenote/Evernote2Onenote-1.2.1.zip/download'
$checksum = '24e2d10748b240f6ba1d6b03ec464647064d8414'
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