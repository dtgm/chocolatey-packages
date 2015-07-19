try {
  Install-ChocolateyPackage 'mariadb' 'msi' '/passive' 'http://ftp.osuosl.org/pub/mariadb/mariadb-10.0.10/win32-packages/mariadb-10.0.10-win32.msi' 'http://ftp.osuosl.org/pub/mariadb/mariadb-10.0.10/winx64-packages/mariadb-10.0.10-winx64.msi'

  #------- ADDITIONAL SETUP -------#
  #add it to the path
  $mariadbPath = "$env:SystemDrive\Program Files\MariaDB 5.5\bin"
  if (![System.IO.Directory]::Exists($mariadbPath)) {$mariadbPath = "$env:SystemDrive\Program Files (x86)\MariaDB 5.5\bin";}
  Install-ChocolateyPath $mariadbPath 'Machine'

  #install the service itself
  Start-Process -FilePath "$mariadbPath\mysqld" -ArgumentList '--install' -Wait -NoNewWindow
  #turn on the service
  Start-Process -FilePath "NET" -ArgumentList 'START MySQL' -Wait -NoNewWindow
  
  Write-ChocolateySuccess 'mariadb'
} catch {
  Write-ChocolateyFailure 'mariadb' $($_.Exception.Message)
  throw 
}
