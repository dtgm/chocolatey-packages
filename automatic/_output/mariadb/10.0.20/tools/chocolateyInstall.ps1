$packageName = 'mariadb'
$urlArray = @('https://downloads.mariadb.org//f/mariadb-10.0.20/win32-packages/mariadb-10.0.20-win32.msi','https://downloads.mariadb.org//f/mariadb-10.0.20/winx64-packages/mariadb-10.0.20-winx64.msi')
$url = $urlArray[0]
$checksum = 'ab307f46b03842dd6319081f37eec0fd184cae5d'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'a491ffc4f782df367fe3ccab6cb1323996d7f836'
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