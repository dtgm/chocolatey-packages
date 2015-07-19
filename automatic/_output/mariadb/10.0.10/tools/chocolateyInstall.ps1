try { 
  $toolsDir ="$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Start-ChocolateyProcessAsAdmin "& $($toolsDir)\installmariadb.ps1"

  Write-ChocolateySuccess 'mariadb'
} catch {
  Write-ChocolateyFailure 'mariadb' "$($_.Exception.Message)"
  throw 
}
