try {
  $scriptDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  $installerFile = Join-Path $scriptDir 'githubforwindows.au3'

  $tempDir = "$env:TEMP\chocolatey\githubforwindows"
  if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
  $file = Join-Path $tempDir "githubsetup.exe"
  Get-ChocolateyWebFile 'githubforwindows' "$file" 'http://github-windows.s3.amazonaws.com/GitHubSetup.exe'
  
  write-host "Installing `'$file`' with AutoIt3 using `'$installerFile`'"
  $installArgs = "/c autoit3 `"$installerFile`" `"$file`""
  Start-ChocolateyProcessAsAdmin "$installArgs" 'cmd.exe'
  sleep(15)
  Write-ChocolateySuccess 'githubforwindows'
} catch {
  Write-ChocolateyFailure 'githubforwindows' "$($_.Exception.Message)"
  throw 
}