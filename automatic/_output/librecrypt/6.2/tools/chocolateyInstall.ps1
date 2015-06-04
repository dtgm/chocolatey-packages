$packageName = 'librecrypt'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://github.com/t-d-k/librecrypt/releases/download/v6.2-beta/InstallLibreCrypt_v62Beta.exe'
$checksum = 'b2e6835f70ee1b31ab703d1465f5e868'
$checksumType = 'md5'
$validExitCodes = @(0)

function Test-Installed ([String]$name) {
  Write-Debug "Running 'Test-Installed' with $name"
  Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                            'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                   -ErrorAction:SilentlyContinue |
  Where-Object { $_.DisplayName -like "*$name*" }
}

# Doxbox must be removed before LibreCrypt may be installed
$nameChange = "DoxBox"
$oldInstall = Test-Installed $nameChange
if ($oldInstall) {
  Start-Job -ScriptBlock {
    Start-Sleep -Seconds 4
    taskkill.exe /F /IM doxbox.exe /T
  }
  Start-ChocolateyProcessAsAdmin "& $($oldInstall.UninstallString) $silentArgs"
}

if (Test-Path $env:ChocolateyInstall\lib\doxbox*) {
  Write-Host "Cleaning old versions from chocolatey lib ..."
  Remove-Item $env:ChocolateyInstall\lib\doxbox* -Force -Recurse -ErrorAction SilentlyContinue
}

$oldInstall = Test-Installed $nameChange
if (! $oldInstall) {
  Install-ChocolateyPackage -PackageName "$packageName" `
                            -FileType "$installerType" `
                            -SilentArgs "$silentArgs" `
                            -Url "$url" `
                            -ValidExitCodes $validExitCodes `
                            -Checksum "$checksum" `
                            -ChecksumType "$checksumType"
} else {
  throw "Failed to uninstall DoxBox. Please uninstall manually and try again."
}