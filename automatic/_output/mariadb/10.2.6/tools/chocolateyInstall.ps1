$packageName = 'mariadb'
$urlArray = @('https://downloads.mariadb.org//f/mariadb-10.2.6/win32-packages/mariadb-10.2.6-win32.msi','https://downloads.mariadb.org//f/mariadb-10.2.6/winx64-packages/mariadb-10.2.6-winx64.msi')
$url = $urlArray[0]
$checksum = 'b88f502cf7ec253ae6f238792dbdfb95a7a3874a0945bc250119319166b6c773'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '5fa20e90ec5f104e8d5d803018e4d8a647a4d1b699a4ce09f6f547483068d50d'
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