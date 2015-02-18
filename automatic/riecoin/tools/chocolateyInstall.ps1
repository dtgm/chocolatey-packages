try {
  $packageName = '{{PackageName}}'
  $packageVersion = '{{PackageVersion}}'
  $installerType = 'exe'
  $silentArgs = '/S'
  $url = '{{DownloadUrlx64}}'
  $chocTempDir = Join-Path $env:TEMP 'chocolatey'
  $pkgTempDir = Join-Path $chocTempDir $packageName
  
  # download and extract to $pkgTempDir
  Install-ChocolateyZipPackage -packageName "$packageName" -url "$url" -unzipLocation "$pkgTempDir"
  
  # determine which installer to run
  $pkgTempDir = Join-Path $pkgTempDir $packageName-$packageVersion-win
  $osBitness = Get-ProcessorBits
  if ($osBitness -eq 64) {
    $installFile = (Get-ChildItem "$pkgTempDir" -filter "*-win64-setup.exe").fullname
  } else {
    $installFile = (Get-ChildItem "$pkgTempDir" -filter "*-win32-setup.exe").fullname
  }
  # run extracted installer
  Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$installFile"
} catch {
  throw $_.Exception
}
