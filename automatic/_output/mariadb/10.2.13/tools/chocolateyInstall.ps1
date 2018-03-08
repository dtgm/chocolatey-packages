$packageName = 'mariadb'
$urlArray = @('https://downloads.mariadb.org//f/mariadb-10.2.13/win32-packages/mariadb-10.2.13-win32.msi','https://downloads.mariadb.org//f/mariadb-10.2.13/winx64-packages/mariadb-10.2.13-winx64.msi')
$url = $urlArray[0]
$checksum = '31a53c117b278354e91d424ec770e1292366f730855f95757320fb349401d0b2'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = 'fab03e3fe010686c9344a0e5e772a051c9960e6b03ca10e89c369fe734eb32e9'
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