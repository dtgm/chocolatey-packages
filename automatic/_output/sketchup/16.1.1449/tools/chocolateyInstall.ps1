$packageName = 'sketchup'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://dl.trimble.com/sketchup/SketchUpMake-en.exe'
$checksum = 'c1d6617721e8209f249808c07aff69787bc0ed62a12e69642b31e380126693b2'
$checksumType = 'sha256'
$url64 = 'http://dl.trimble.com/sketchup/SketchUpMake-en-x64.exe'
$checksum64 = 'caa4224614538a3d28c0b3291fc218c2fccf92b3002618ed0c56a83b892f46ce'
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