$packageName = '{{PackageName}}'
$packageVersion = '{{PackageVersion}}'
$installerType = 'exe'
$silentArgs = '/S'
$url = '{{DownloadUrlx64}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
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
