$packageName = 'ilspy'
$url = 'https://github.com/icsharpcode/ILSpy/releases/download/2.3/ILSpy_Master_2.3.0.1827_Binaries.zip'
$checksum = 'a17c7bb61e275a7548007af40a2916b923ec9d83'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Set-Content -Path ("$toolsDir\$packageName.exe.gui") -Value $null
Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$toolsDir" -Url64bit "" -Checksum "$checksum" -ChecksumType "$checksumType"
