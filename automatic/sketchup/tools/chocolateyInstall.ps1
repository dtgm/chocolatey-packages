$packageName = '{{PackageName}}'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha256'
$validExitCodes = @(0,3010)
$pkgTempDir = Join-Path $env:temp $packageName

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -Url64bit "$url64" `
                             -UnzipLocation "$pkgTempDir" `
                             -Checksum "$checksum" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType "$checksumType" `
                             -ChecksumType64 "$checksumType64"

$installFile = gci $pkgTempDir\*.msi
if ($installFile) {
Install-ChocolateyInstallPackage -PackageName "$packageName" `
                                 -FileType "$installerType" `
                                 -SilentArgs "$silentArgs" `
                                 -File "$installFile" `
                                 -ValidExitCodes $validExitCodes
} else {
  Write-Warning "MSI install file not found."
  throw
}