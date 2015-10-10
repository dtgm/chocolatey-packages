$packageName = 'mariadb'
$urlArray = @('https://downloads.mariadb.org//f/mariadb-10.1.7/win32-packages/mariadb-10.1.7-win32.msi','https://downloads.mariadb.org//f/mariadb-10.1.7/winx64-packages/mariadb-10.1.7-winx64.msi')
$url = $urlArray[0]
$checksum = 'dcf281129eb67b9fc6f21c2e46d575a5353f111f'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'e5a77d6c30fe145ddea61c2ea262222ddfc3a08f'
$checksumType64 = 'sha1'
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
$binPath = Join-Path $regKey.InstallLocation "bin"
if ($binPath) {
  Install-ChocolateyPath $binPath 'Machine'
}

Write-Verbose "Installing service..."
Start-Process -FilePath "$binPath\mysqld" `
              -ArgumentList '--install' `
              -Wait `
              -NoNewWindow

Write-Verbose "Starting service..."
Start-Process -FilePath "NET" `
              -ArgumentList 'START MySQL' `
              -Wait `
              -NoNewWindow