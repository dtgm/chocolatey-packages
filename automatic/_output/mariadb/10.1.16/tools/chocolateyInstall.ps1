$packageName = 'mariadb'
$urlArray = @('https://downloads.mariadb.org//f/mariadb-10.1.16/win32-packages/mariadb-10.1.16-win32.msi','https://downloads.mariadb.org//f/mariadb-10.1.16/winx64-packages/mariadb-10.1.16-winx64.msi')
$url = $urlArray[0]
$checksum = '83d00c50ec1a96d9a4db1c6be3e472e0fa8a58f47dda86e33d3b1321e5e18ee7'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '79363b6660e29b5cf66471495b4bbd18e7525a847165817cf96773d037dab958'
$checksumType64 = 'sha256'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$validExitCodes = @(0,3010)

Write-Verbose "Downloading and installing program..."
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"

Write-Verbose "Querying registry for install location..."
$packageSearch = "MariaDB *"
$regKey = Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                   'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                   'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                           -ErrorAction:SilentlyContinue `
          | Where-Object {$_.DisplayName -like $packageSearch}

Write-Verbose "Adding MariaDB bin directory to path environment variable..."
$binPath = Join-Path $regKey.InstallLocation[0] "bin"
if ($binPath) {
  Install-ChocolateyPath $binPath 'Machine'

  Write-Verbose "Installing service..."
  Start-Process -FilePath $(Join-Path $binPath "mysqld") `
                -ArgumentList '--install' `
                -Wait `
                -NoNewWindow

  Write-Verbose "Starting service..."
  Start-Process -FilePath "NET" `
                -ArgumentList 'START MySQL' `
                -Wait `
                -NoNewWindow
}