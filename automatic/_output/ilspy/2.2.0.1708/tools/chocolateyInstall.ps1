$packageName = 'ilspy'
$url = 'https://github.com/icsharpcode/ILSpy/releases/download/2.2/ILSpy_2.2.0.1706_Binaries.zip'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$checksum = 'a8479d89ffb32908a5da5517dc9d8c5d71acad4e'
$checksumType = 'sha1'
Set-Content -Path ("$toolsDir\$packageName.exe.gui") -Value $null
Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Url64bit "" -Checksum "$checksum" -ChecksumType "$checksumType"