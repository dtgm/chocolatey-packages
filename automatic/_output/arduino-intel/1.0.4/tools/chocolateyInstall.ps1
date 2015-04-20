$packageName = 'arduino-intel'
$url = 'http://downloadmirror.intel.com/24357/eng/arduino-windows-1.0.4.7z'
$checksum = '75a740c98f2612a5ec6bfd8f9284003977c4f7bf'
$checksumType = 'sha1'
if(!$Env:ChocolateyBinRoot){
  $Env:ChocolateyBinRoot = "$Env:SystemDrive"
}
$installDir = Join-Path "$Env:ChocolateyBinRoot" "$packageName"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$installDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

if ( (Get-ChildItem $installDir).Count -eq 1 ) {
  Move-Item -Path (Join-Path (Get-ChildItem $installDir).FullName "\`*") -Destination "$installDir"
}
Install-ChocolateyPath "$installDir" 'User'