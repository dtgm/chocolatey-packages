$packageName = 'riecoin'
$packageVersion = '0.10.2'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/riecoin/files/riecoin%200.10.2/riecoin-0.10.2-win.zip/download'
$checksum = 'c61af0b9b8a73fc97d4a9f12889070550c22d10c'
$checksumType = 'sha1'
$url64 = $url
$checksum64 = $checksum
$checksumType64 = $checksumType
$chocTempDir = Join-Path $env:TEMP 'chocolatey'
$pkgTempDir = Join-Path $chocTempDir $packageName
 
# download and extract to $pkgTempDir
Install-ChocolateyZipPackage -PackageName "$packageName" -Url "$url" -UnzipLocation "$pkgTempDir" -Url64bit "$url64" -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"

# determine which installer to run
$pkgTempDir = Join-Path $pkgTempDir $packageName-$packageVersion-win
$osBitness = Get-ProcessorBits

if ($osBitness -eq 64) {
  $installFile = (Get-ChildItem "$pkgTempDir" -filter "*-win64-setup.exe").fullname
} else {
  $installFile = (Get-ChildItem "$pkgTempDir" -filter "*-win32-setup.exe").fullname
}

# run extracted installer
Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$installFile"
