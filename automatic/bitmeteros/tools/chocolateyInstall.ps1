$packageName = '{{PackageName}}'
$installerType = 'exe'
$silentArgs = '/S'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$validExitCodes = @(0)

$chocoTempDir = Join-Path $Env:Temp "chocolatey"
$pkgTempDir = Join-Path $chocoTempDir "$packageName"
if (![System.IO.Directory]::Exists($pkgTempDir)) {[System.IO.Directory]::CreateDirectory($pkgTempDir)}
$zipFile = Join-Path $pkgTempDir "$($packageName)Install.zip"
$installFile = Join-Path $pkgTempDir "BitMeterOSInstaller.exe"

Write-Debug "Downloading to $($zipFile)..."
Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$zipFile" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

Write-Debug "Extracting $($zipFile) to $($pkgTempDir)..."
Get-ChocolateyUnzip -FileFullPath "$zipFile" `
                    -Destination "$pkgTempDir" `
                    -SpecificFolder "" `
                    -PackageName "$packageName"

Write-Verbose "Starting AutoHotKey for assistance in silent and/or automated install"
Write-Verbose "Actively using the computer while AutoHotKey is running may interfere with automation"
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$ahkFile = Join-Path $toolsDir "chocolateyInstall.ahk"
$ahkExe = 'AutoHotKey'
Start-Process $ahkExe $ahkFile

Write-Debug "Installing $($installFile)..."
Install-ChocolateyInstallPackage -PackageName "$packageName" `
                                 -FileType "$installerType" `
                                 -SilentArgs "$silentArgs" `
                                 -File "$installFile" `
                                 -ValidExitCodes $validExitCodes 