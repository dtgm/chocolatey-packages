$packageName = 'install4j.portable'
$url = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows_6_1_5.zip'
$checksum = '7f6885c39c8ca032b0ace00b887c329082d6ddef4947b51f4027e31e54d215ab'
$checksumType = 'sha256'
$url64 = 'http://download-keycdn.ej-technologies.com/install4j/install4j_windows-x64_6_1_5.zip'
$checksum64 = 'f6c67de4cc047e10ec47c225a43977723c4bb60e72ab92b923baa45e7f0b472b'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"