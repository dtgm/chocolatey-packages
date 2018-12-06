$packageArgs = @{
  packageName            = '{{PackageName}}'
  FileFullPath           = "$env:TMP\i2pinstall_windows.exe"
  url                    = '{{DownloadUrl}}'
  checksum               = '{{Checksum}}'
  checksumType           = 'sha256'
}
Get-ChocolateyWebFile @packageArgs

$config = "INSTALL_PATH=$("$env:PROGRAMFILES\i2p" -replace '\\','\\')"

[IO.File]::WriteAllLines("$env:TMP\i2pinstall_windows.properties", $config, (New-Object System.Text.UTF8Encoding $False))

$packageArgs = @{
  packageName            = "$env:chocolateyPackageName"
  FileType               = 'exe'
  SilentArgs             = "-jar `"$env:TMP\i2pinstall_windows.exe`" -options `"$env:TMP\i2pinstall_windows.properties`""
  File                   = (get-command java.exe).Definition
}
Install-ChocolateyInstallPackage @packageArgs
