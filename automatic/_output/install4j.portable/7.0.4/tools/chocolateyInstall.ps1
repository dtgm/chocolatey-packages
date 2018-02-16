$packageName = 'install4j.portable'
$url = 'https://download-keycdn.ej-technologies.com/install4j/install4j_windows_7_0_4.zip'
$checksum = 'cc6fd2f317310fcb7d7efbdd47cdce6fad8da6ff66419c5f5931d165db1c10fc'
$checksumType = 'sha256'
$url64 = 'https://download-keycdn.ej-technologies.com/install4j/install4j_windows-x64_7_0_4.zip'
$checksum64 = 'c4f0aa7506a259baada60af5fcb8e7c00a48dbbf8922c8309d9b18cfc2ebf54d'
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